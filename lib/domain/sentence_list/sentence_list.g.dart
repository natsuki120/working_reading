// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SentenceList _$$_SentenceListFromJson(Map<String, dynamic> json) =>
    _$_SentenceList(
      sentenceList: (json['sentenceList'] as List<dynamic>?)
              ?.map((e) => Sentence.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SentenceListToJson(_$_SentenceList instance) =>
    <String, dynamic>{
      'sentenceList': instance.sentenceList,
    };
