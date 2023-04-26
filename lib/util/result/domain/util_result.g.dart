// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'util_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UtilResult _$$_UtilResultFromJson(Map<String, dynamic> json) =>
    _$_UtilResult(
      percent: json['percent'] as int? ?? 0,
      correctList: (json['correctList'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const <bool>[],
    );

Map<String, dynamic> _$$_UtilResultToJson(_$_UtilResult instance) =>
    <String, dynamic>{
      'percent': instance.percent,
      'correctList': instance.correctList,
    };
