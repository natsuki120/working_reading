import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/domain/result/result.dart';
import 'package:working_reading/domain/sentence/sentence.dart';

class ResultNotifier extends StateNotifier<Result> {
  ResultNotifier() : super(const Result());

  void aggregateResultFromEachSentence(List<Sentence> sentenceList) {
    for (Sentence sentence in sentenceList) {
      if (sentence.hasCollected) {
        List<bool> newList = [];
        newList.add(true);
        state = state.copyWith(correctList: newList);
      }
    }

    state = state.copyWith(
        percent: (state.correctList.length / sentenceList.length) * 100);
    if (state.percent >= 80) {
      state = state.copyWith(isPassed: true);
    }
  }
}

final resultNotifier =
    StateNotifierProvider<ResultNotifier, Result>((ref) => ResultNotifier());

final resultListNotifier = StateProvider<List<Result>>((ref) => <Result>[]);
