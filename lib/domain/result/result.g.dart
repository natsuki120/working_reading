// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      percent: json['percent'] as int? ?? 0,
      correctList: (json['correctList'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const <bool>[],
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'percent': instance.percent,
      'correctList': instance.correctList,
    };
