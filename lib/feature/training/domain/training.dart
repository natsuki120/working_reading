import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:working_reading/util/sentence/sentence.dart';
part 'training.freezed.dart';
part 'training.g.dart';

@freezed
class Training with _$Training {
  const factory Training({
    @Default('') String lastWord,
    @Default(false) bool readingEnough,
    @Default(false) bool readingEnabled,
    @Default(0.0) double voiceIndicatorValue,
  }) = _Training;

  factory Training.fromJson(Map<String, dynamic> json) =>
      _$TrainingFromJson(json);
}

abstract class ITrainingRepository {
  Future<List<UtilSentence>> fetchRandomSentenceToUseQuestion(
      {required int num});
}
