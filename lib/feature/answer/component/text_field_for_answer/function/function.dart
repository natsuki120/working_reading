import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/function/function.dart';
import 'package:working_reading/i18n/strings.dart';
import 'package:working_reading/util/sentence/sentence.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';

import '../../../../../color_config.dart';
import '../../../../../font_config.dart';
import '../../../../../util/result/controller/controller.dart';
import '../../../../result/result_page.dart';
import '../../../../top/provider/provider.dart';
import '../../../../training/training_page.dart';

Future<void> callNextAction(
    {required WidgetRef ref,
    required BuildContext context,
    required int sessionsToResult}) async {
  ref.read(utilResultController.notifier).aggregateResult(
        ref.read(utilSentenceListNotifier.notifier).state.sentenceList,
      );
  ref
      .read(utilResultListController.notifier)
      .state
      .add(ref.read(utilResultController.notifier).state);
  if (sessionsToResult == 2) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ResultPage()),
    );
    resetNumber(sessionsToResult);
  } else {
    ref
        .read(utilSentenceListNotifier.notifier)
        .fetchRandomSentenceToUseQuestion(num: ref.watch(nBackNumProvider));
    increaseNumber(sessionsToResult);
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const TrainingPage()),
    );
  }
}

bool allQuestionIsDisplayed(WidgetRef ref) =>
    ref.watch(utilSentenceListNotifier.notifier).state.sentenceList.every(
          (UtilSentence sentence) => sentence.hasCollected == true,
        );

void displaySnackBar(
    {required String nounWhichHasAnswered,
    required BuildContext context,
    required TextEditingController textEditingController,
    required WidgetRef ref}) {
  if (nounWhichHasAnswered == '') {
    const snackBar = SnackBar(
      content: Text(incorrect),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    textEditingController.clear();
  } else {
    ref
        .read(utilSentenceListNotifier.notifier)
        .changeSentenceToCollected(noun: textEditingController.text);
    final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        correct,
        style: bodyRegular(whitePrimary),
      ),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    textEditingController.clear();
  }
}
