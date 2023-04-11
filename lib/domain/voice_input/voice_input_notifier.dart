import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    state = state.copyWith(speechEnabled: await _speechToText.initialize());
  }

  void startListening() async {
    await _speechToText.listen(onResult: onSpeechResult);
  }

  void stopListening() async {
    await _speechToText.stop();
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    state = state.copyWith(lastWord: result.recognizedWords);
  }

  void isSpeechEnough(Sentence sentence) {
    if (state.lastWord.length >= sentence.text.length) {
      state = state.copyWith(hasSpeechEnough: true);
    }
  }
}

final voiceInputNotifier = StateNotifierProvider((ref) => VoiceInputNotifier());
