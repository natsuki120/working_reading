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

  void initSpeech() async {
    state = state.copyWith(
        speechEnabled: await _speechToText.initialize(),
        hasSpeechEnough: false,
        lastWord: '');
    startListening();
  }

  void startListening() async {
    try {
      await _speechToText.listen(onResult: onSpeechResult, localeId: 'ja-JP');
      state = state.copyWith(hasSpeechEnough: false);
    } catch (e) {
      print(e);
    }
  }

  void stopListening() async {
    await _speechToText.stop();
    state = state.copyWith(speechEnabled: false);
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    state = state.copyWith(lastWord: result.recognizedWords);
  }

  void onData(NoiseReading noiseReading) {
    if (!state.speechEnabled) {
      state = state.copyWith(speechEnabled: true);
    }
  }

  void resetHasSpeechEnoughValue() {
    state = state.copyWith(hasSpeechEnough: false);
    print('ビジネスロジック側: ${state.hasSpeechEnough}');
  }

  void getVoiceIndicatorValue(
      {required List<Sentence> sentenceList, required int questionIndex}) {
    if (questionIndex == 0) {
      state = state.copyWith(
        voiceIndicatorValue:
            state.lastWord.length / sentenceList[0].text.length,
      );
    }
    if (questionIndex != 0) {
      state = state.copyWith(
        voiceIndicatorValue: (state.lastWord.length -
                sentenceList[questionIndex - 1].text.length) /
            sentenceList[questionIndex].text.length,
      );
    }
    if (state.voiceIndicatorValue >= 0.8) {
      state = state.copyWith(voiceIndicatorValue: 1, hasSpeechEnough: true);
    }
  }

  void resetVoiceIndicatorValue() {
    state = state.copyWith(voiceIndicatorValue: 0.0);
  }
}

final voiceInputNotifier =
    StateNotifierProvider<VoiceInputNotifier, VoiceInput>(
        (ref) => VoiceInputNotifier());
