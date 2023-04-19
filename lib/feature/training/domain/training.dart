import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'training.freezed.dart';
part 'training.g.dart';

@freezed
class Training with _$Training {
  const factory Training({
    @Default([]) List<String> sentenceList,
    @Default('') String lastWord,
    @Default('') String properNoun,
    @Default(false) bool readingEnough,
    @Default(false) bool readingEnabled,
    @Default(0.0) double voiceIndicatorValue,
    @Default(1) int listIndex,
    @Default(1) int nBackNum,
  }) = _Training;

  factory Training.fromJson(Map<String, dynamic> json) =>
      _$TrainingFromJson(json);
}

abstract class ITrainingRepository {
  Future<List<String>> fetchRandomSentenceToUseQuestion({required int num});
}
