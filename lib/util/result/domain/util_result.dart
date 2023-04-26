import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'util_result.freezed.dart';
part 'util_result.g.dart';

@freezed
class UtilResult with _$UtilResult {
  const factory UtilResult({
    @Default(0) int percent,
    @Default(<bool>[]) List<bool> correctList,
  }) = _UtilResult;

  factory UtilResult.fromJson(Map<String, dynamic> json) =>
      _$UtilResultFromJson(json);
}
