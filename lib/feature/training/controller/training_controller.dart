import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:working_reading/feature/training/domain/training.dart';

class TrainingController extends StateNotifier<Training> {
  TrainingController() : super(Training());

  final SpeechToText _speechToText = SpeechToText();

  void initSpeech() async {
    state = state.copyWith(
        readingEnabled: await _speechToText.initialize(),
        readingEnough: false,
        lastWord: '');
    startListening();
  }

  void startListening() async {
    try {
      await _speechToText.listen(onResult: onSpeechResult, localeId: 'ja-JP');
      state = state.copyWith(readingEnough: false);
    } catch (e) {
      print(e);
    }
  }

  void stopListening() async {
    await _speechToText.stop();
    state = state.copyWith(readingEnabled: false);
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    state = state.copyWith(lastWord: result.recognizedWords);
  }

  void onData(NoiseReading noiseReading) {
    if (!state.readingEnabled) {
      state = state.copyWith(readingEnabled: true);
    }
  }

  // void resetHasSpeechEnoughValue() {
  //   state = state.copyWith(readingEnough: false);
  // }

  void getVoiceIndicatorValue({required int questionIndex}) {
    if (questionIndex == 0) {
      state = state.copyWith(
        voiceIndicatorValue:
            state.lastWord.length / state.sentenceList[0].length,
      );
    }
    if (questionIndex != 0) {
      state = state.copyWith(
        voiceIndicatorValue: (state.lastWord.length -
                state.sentenceList[questionIndex - 1].length) /
            state.sentenceList[questionIndex].length,
      );
    }

    if (state.voiceIndicatorValue >= 0.8) {
      state = state.copyWith(voiceIndicatorValue: 1, readingEnough: true);
    }
  }

  void resetVoiceIndicatorValue() {
    state = state.copyWith(voiceIndicatorValue: 0.0);
  }
}
