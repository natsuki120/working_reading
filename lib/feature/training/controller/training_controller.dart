import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:working_reading/feature/training/domain/training.dart';
import 'package:working_reading/feature/training/repository/training_repository_with_supabase.dart';
import 'package:working_reading/util/sentence/sentence.dart';

class TrainingController extends StateNotifier<Training> {
  TrainingController({required this.trainingRepository}) : super(Training());

  final ITrainingRepository trainingRepository;

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

  void getVoiceIndicatorValue(
      {required List<UtilSentence> sentenceList, required int questionIndex}) {
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
      state = state.copyWith(voiceIndicatorValue: 1, readingEnough: true);
    }
  }

  void resetVoiceIndicatorValue() {
    state = state.copyWith(voiceIndicatorValue: 0.0);
  }
}

final trainingController = StateNotifierProvider<TrainingController, Training>(
  (ref) => TrainingController(
    trainingRepository: TrainingRepositoryWithSupabase(),
  ),
);
