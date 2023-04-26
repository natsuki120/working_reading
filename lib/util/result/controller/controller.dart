import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/domain/sentence/sentence.dart';
import '../domain/util_result.dart';

class Controller extends StateNotifier<List<UtilResult>> {
  Controller() : super(const []);

  void aggregateResult(List<Sentence> sentenceList) {
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
    List<UtilResult> result = [
      UtilResult(correctList: correctedList, percent: correctPercent.toInt())
    ];

    state = [...result];
  }
}

final utilResultListController =
    StateNotifierProvider<Controller, List<UtilResult>>((ref) => Controller());
