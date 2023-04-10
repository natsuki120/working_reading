import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/repository/famous_saying_repository/famous_saying_repository.dart';
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

final fetchRandomFamousSaying = FutureProvider(
    (ref) => FamousSayingRepositoryWithSupabase().fetchRandomFamousSaying());
