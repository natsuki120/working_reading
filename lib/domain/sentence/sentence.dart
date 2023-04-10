import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sentence.freezed.dart';
part 'sentence.g.dart';

@freezed
class Sentence with _$Sentence {
  const factory Sentence({
    @Default('') String text,
    @Default('') String properNoun,
    @Default(false) bool hasCollected,
  }) = _Sentence;

  factory Sentence.fromJson(Map<String, dynamic> json) =>
      _$SentenceFromJson(json);
}

abstract class ISentenceRepository {
  Future<List<Sentence>> fetchRandomSentenceToUseQuestion({required int num});
}
