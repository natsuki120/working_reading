// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sentence _$$_SentenceFromJson(Map<String, dynamic> json) => _$_Sentence(
      text: json['text'] as String,
      properNounList: (json['properNounList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SentenceToJson(_$_Sentence instance) =>
    <String, dynamic>{
      'text': instance.text,
      'properNounList': instance.properNounList,
    };
