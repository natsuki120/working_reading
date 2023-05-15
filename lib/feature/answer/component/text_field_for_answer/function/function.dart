import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/util/sentence/sentence.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../../../color_config.dart';
import '../../../../../font_config.dart';
import '../../../../../util/result/controller/controller.dart';
import '../../../../result/result_page.dart';
import '../../../../top/provider/provider.dart';
import '../../../../training/nomal_mode_page.dart';
import '../../../provider/provider.dart';

Future<void> callNextAction(
    {required WidgetRef ref, required BuildContext context}) async {
  ref.read(utilResultController.notifier).aggregateResult(
        ref.read(utilSentenceListNotifier.notifier).state.sentenceList,
      );
  ref
      .read(utilResultListController.notifier)
      .state
      .add(ref.read(utilResultController.notifier).state);
  if (ref.read(trainingNum) == 2) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ResultPage()),
    );
    ref.read(trainingNum.notifier).state = 1;
  } else {
    ref
        .read(utilSentenceListNotifier.notifier)
        .fetchRandomSentenceToUseQuestion(num: ref.watch(nBackNumProvider));
    ref.read(trainingNum.notifier).state++;
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const NormalModePage()),
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
      content: Text('ハズレです'),
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
        'あたり！',
        style: bodyRegular(whitePrimary),
      ),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    textEditingController.clear();
  }
}
