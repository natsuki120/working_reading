import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sentence.freezed.dart';
part 'sentence.g.dart';

@freezed
class Sentence with _$Sentence {
  const factory Sentence({
    required String text,
    required String properNoun,
  }) = _Sentence;

  factory Sentence.fromJson(Map<String, dynamic> json) =>
      _$SentenceFromJson(json);
}

abstract class ISentenceRepository {
  Future<List<Sentence>> fetchRandomSentenceToUseQuestion();
}
