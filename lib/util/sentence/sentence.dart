import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sentence.freezed.dart';
part 'sentence.g.dart';

@freezed
class UtilSentence with _$UtilSentence {
  const factory UtilSentence({
    @Default('') String text,
    @Default('') String properNoun,
    @Default(false) bool hasCollected,
    @Default(false) bool giveUp,
  }) = _UtilSentence;

  factory UtilSentence.fromJson(Map<String, dynamic> json) =>
      _$UtilSentenceFromJson(json);
}

abstract class IUtilSentenceRepository {
  Future<List<UtilSentence>> fetchRandomSentenceToUseQuestion(
      {required int num});
}
