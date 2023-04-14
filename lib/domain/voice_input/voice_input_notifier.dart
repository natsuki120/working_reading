import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:working_reading/domain/sentence/sentence.dart';
import 'package:working_reading/domain/voice_input/voice_input.dart';

class VoiceInputNotifier extends StateNotifier<VoiceInput> {
  VoiceInputNotifier() : super(const VoiceInput()) {
    initSpeech();
  }

  final SpeechToText _speechToText = SpeechToText();
  StreamSubscription<NoiseReading>? noiseSubscription;
  final NoiseMeter noiseMeter = NoiseMeter();

  void initSpeech() async {
    state = state.copyWith(speechEnabled: await _speechToText.initialize());
    startListening();
  }

  void startListening() async {
    try {
      await _speechToText.listen(onResult: onSpeechResult, localeId: 'ja-JP');
      noiseSubscription = noiseMeter.noiseStream.listen(onData);
      state = state.copyWith(hasSpeechEnough: false);
    } catch (e) {
      print(e);
    }
  }

  void stopListening() async {
    await _speechToText.stop();
    try {
      if (noiseSubscription != null) {
        noiseSubscription!.cancel();
        noiseSubscription = null;
      }
      state = state.copyWith(speechEnabled: false);
    } catch (err) {
      print('stopRecorder error: $err');
    }
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    state = state.copyWith(lastWord: result.recognizedWords);
  }

  void onData(NoiseReading noiseReading) {
    if (!state.speechEnabled) {
      state = state.copyWith(speechEnabled: true);
    }
  }

  void makeTappableNextButtonIfSpeechEnoughThan(
      {required List<Sentence> sentenceList, required int questionIndex}) {
    int allSentenceLength = 0;

    if (questionIndex == 0) {
      if (state.lastWord.length > sentenceList[0].text.length - 10) {
        state = state.copyWith(hasSpeechEnough: true);
      }
    } else {
      for (int i = 0; i <= questionIndex; i++) {
        allSentenceLength += sentenceList[i].text.length;
      }
      if (state.lastWord.length > allSentenceLength - 10) {
        print(allSentenceLength);
        state = state.copyWith(hasSpeechEnough: true);
      }
    }
  }

  void resetHasSpeechEnoughValue() {
    state = state.copyWith(hasSpeechEnough: false);
  }

  void getVoiceIndicatorValue() {
    noiseMeter.noiseStream.listen((NoiseReading noiseReading) {
      state = state.copyWith(voiceIndicatorValue: noiseReading.meanDecibel);
    });
  }
}

final voiceInputNotifier =
    StateNotifierProvider<VoiceInputNotifier, VoiceInput>(
        (ref) => VoiceInputNotifier());
