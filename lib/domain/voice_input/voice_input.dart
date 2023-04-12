import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'voice_input.freezed.dart';
part 'voice_input.g.dart';

@freezed
class VoiceInput with _$VoiceInput {
  const factory VoiceInput({
    @Default('') String lastWord,
    @Default(false) bool speechEnabled,
    @Default(false) bool hasSpeechEnough,
  }) = _VoiceInput;

  factory VoiceInput.fromJson(Map<String, dynamic> json) =>
      _$VoiceInputFromJson(json);
}
