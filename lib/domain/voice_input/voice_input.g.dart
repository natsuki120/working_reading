// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VoiceInput _$$_VoiceInputFromJson(Map<String, dynamic> json) =>
    _$_VoiceInput(
      lastWord: json['lastWord'] as String? ?? '',
      speechEnabled: json['speechEnabled'] as bool? ?? false,
      hasSpeechEnough: json['hasSpeechEnough'] as bool? ?? false,
      voiceIndicatorValue:
          (json['voiceIndicatorValue'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_VoiceInputToJson(_$_VoiceInput instance) =>
    <String, dynamic>{
      'lastWord': instance.lastWord,
      'speechEnabled': instance.speechEnabled,
      'hasSpeechEnough': instance.hasSpeechEnough,
      'voiceIndicatorValue': instance.voiceIndicatorValue,
    };
