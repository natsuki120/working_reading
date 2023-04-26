import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/util/sentence/sentence.dart';
import '../domain/util_result.dart';

class Controller extends StateNotifier<UtilResult> {
  Controller() : super(const UtilResult());

  void aggregateResult(List<UtilSentence> sentenceList) {
    List<bool> newList = [];
    List<bool> correctedList = [];
    double correctPercent = 0.0;
    for (UtilSentence sentence in sentenceList) {
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

final utilResultController =
    StateNotifierProvider<Controller, UtilResult>((ref) => Controller());

final utilResultListController = StateProvider<List<UtilResult>>((ref) => []);
