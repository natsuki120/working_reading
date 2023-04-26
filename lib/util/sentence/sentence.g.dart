// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UtilSentence _$$_UtilSentenceFromJson(Map<String, dynamic> json) =>
    _$_UtilSentence(
      text: json['text'] as String? ?? '',
      properNoun: json['properNoun'] as String? ?? '',
      hasCollected: json['hasCollected'] as bool? ?? false,
      giveUp: json['giveUp'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UtilSentenceToJson(_$_UtilSentence instance) =>
    <String, dynamic>{
      'text': instance.text,
      'properNoun': instance.properNoun,
      'hasCollected': instance.hasCollected,
      'giveUp': instance.giveUp,
    };
