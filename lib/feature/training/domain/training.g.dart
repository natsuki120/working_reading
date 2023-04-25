// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Training _$$_TrainingFromJson(Map<String, dynamic> json) => _$_Training(
      sentenceList: (json['sentenceList'] as List<dynamic>?)
              ?.map((e) => Sentence.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastWord: json['lastWord'] as String? ?? '',
      readingEnough: json['readingEnough'] as bool? ?? false,
      readingEnabled: json['readingEnabled'] as bool? ?? false,
      voiceIndicatorValue:
          (json['voiceIndicatorValue'] as num?)?.toDouble() ?? 0.0,
      listIndex: json['listIndex'] as int? ?? 1,
      nBackNum: json['nBackNum'] as int? ?? 1,
    );

Map<String, dynamic> _$$_TrainingToJson(_$_Training instance) =>
    <String, dynamic>{
      'sentenceList': instance.sentenceList,
      'lastWord': instance.lastWord,
      'readingEnough': instance.readingEnough,
      'readingEnabled': instance.readingEnabled,
      'voiceIndicatorValue': instance.voiceIndicatorValue,
      'listIndex': instance.listIndex,
      'nBackNum': instance.nBackNum,
    };
