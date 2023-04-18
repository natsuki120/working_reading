import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/domain/result/result.dart';
import 'package:working_reading/domain/sentence/sentence.dart';

class ResultNotifier extends StateNotifier<Result> {
  ResultNotifier() : super(const Result());

  void aggregateResultFromEachSentence(List<Sentence> sentenceList) {
    List<bool> newList = [];
    List<bool> correctedList = [];
    double correctPercent = 0.0;
    for (Sentence sentence in sentenceList) {
      if (sentence.hasCollected) {
        newList.add(true);
      } else {
        newList.add(false);
      }
    }

    for (bool hasCorrected in newList) {
      if (hasCorrected) {
        correctedList.add(hasCorrected);
      }
    }

    correctPercent = (correctedList.length / sentenceList.length) * 100;

    state = state.copyWith(
      correctList: correctedList,
      percent: correctPercent.toInt(),
    );
  }
}

final resultNotifier =
    StateNotifierProvider<ResultNotifier, Result>((ref) => ResultNotifier());

final resultListNotifier = StateProvider<List<Result>>((ref) => <Result>[]);
