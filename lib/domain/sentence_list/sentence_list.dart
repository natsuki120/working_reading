import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../sentence/sentence.dart';
part 'sentence_list.freezed.dart';
part 'sentence_list.g.dart';

@freezed
class SentenceList with _$SentenceList {
  const factory SentenceList({
    @Default([]) List<Sentence> sentenceList,
  }) = _SentenceList;

  factory SentenceList.fromJson(Map<String, dynamic> json) =>
      _$SentenceListFromJson(json);
}
