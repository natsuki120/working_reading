// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Training _$$_TrainingFromJson(Map<String, dynamic> json) => _$_Training(
      lastWord: json['lastWord'] as String? ?? '',
      readingEnough: json['readingEnough'] as bool? ?? false,
      readingEnabled: json['readingEnabled'] as bool? ?? false,
      voiceIndicatorValue:
          (json['voiceIndicatorValue'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_TrainingToJson(_$_Training instance) =>
    <String, dynamic>{
      'lastWord': instance.lastWord,
      'readingEnough': instance.readingEnough,
      'readingEnabled': instance.readingEnabled,
      'voiceIndicatorValue': instance.voiceIndicatorValue,
    };
