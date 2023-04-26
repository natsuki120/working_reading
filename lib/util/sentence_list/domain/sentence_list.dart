import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:working_reading/util/sentence/sentence.dart';
part 'sentence_list.freezed.dart';
part 'sentence_list.g.dart';

@freezed
class UtilSentenceList with _$UtilSentenceList {
  const factory UtilSentenceList({
    @Default([]) List<UtilSentence> sentenceList,
  }) = _UtilSentenceList;

  factory UtilSentenceList.fromJson(Map<String, dynamic> json) =>
      _$UtilSentenceListFromJson(json);
}
