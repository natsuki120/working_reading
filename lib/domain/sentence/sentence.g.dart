// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sentence _$$_SentenceFromJson(Map<String, dynamic> json) => _$_Sentence(
      text: json['text'] as String? ?? '',
      properNoun: json['properNoun'] as String? ?? '',
      hasCollected: json['hasCollected'] as bool? ?? false,
      giveUp: json['giveUp'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SentenceToJson(_$_Sentence instance) =>
    <String, dynamic>{
      'text': instance.text,
      'properNoun': instance.properNoun,
      'hasCollected': instance.hasCollected,
      'giveUp': instance.giveUp,
    };
