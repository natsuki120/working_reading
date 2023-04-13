// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sentence _$$_SentenceFromJson(Map<String, dynamic> json) => _$_Sentence(
      giveUp: json['giveUp'] as bool? ?? false,
      text: json['text'] as String? ?? '',
      properNoun: json['properNoun'] as String? ?? '',
      hasCollected: json['hasCollected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SentenceToJson(_$_Sentence instance) =>
    <String, dynamic>{
      'giveUp': instance.giveUp,
      'text': instance.text,
      'properNoun': instance.properNoun,
      'hasCollected': instance.hasCollected,
    };
