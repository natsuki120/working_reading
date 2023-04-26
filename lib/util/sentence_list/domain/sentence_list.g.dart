// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UtilSentenceList _$$_UtilSentenceListFromJson(Map<String, dynamic> json) =>
    _$_UtilSentenceList(
      sentenceList: (json['sentenceList'] as List<dynamic>?)
              ?.map((e) => UtilSentence.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UtilSentenceListToJson(_$_UtilSentenceList instance) =>
    <String, dynamic>{
      'sentenceList': instance.sentenceList,
    };
