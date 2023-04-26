import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'famous_saying.freezed.dart';
part 'famous_saying.g.dart';

@freezed
class FamousSaying with _$FamousSaying {
  const factory FamousSaying({
    @Default(0) int id,
    @Default('') String content,
    @Default('') String author,
  }) = _FamousSaying;

  factory FamousSaying.fromJson(Map<String, dynamic> json) =>
      _$FamousSayingFromJson(json);
}
