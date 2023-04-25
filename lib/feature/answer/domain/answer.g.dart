// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      sentenceList: (json['sentenceList'] as List<dynamic>?)
              ?.map((e) => Sentence.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nBackNum: json['nBackNum'] as int? ?? 1,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'sentenceList': instance.sentenceList,
      'nBackNum': instance.nBackNum,
    };
