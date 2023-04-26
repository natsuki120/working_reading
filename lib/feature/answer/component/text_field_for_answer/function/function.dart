import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/controller/training_controller.dart';
import '../../../../../color_config.dart';
import '../../../../../domain/sentence/sentence.dart';
import '../../../../../domain/sentence_list/sentence_list_notifier.dart';
import '../../../../../font_config.dart';
import '../../../../../util/result/controller/controller.dart';
import '../../../../result/result_page.dart';
import '../../../../top/provider/provider.dart';
import '../../../../training/training_page.dart';
import '../../../provider/provider.dart';

Future<void> callNextAction(
    {required WidgetRef ref, required BuildContext context}) async {
  ref.read(utilResultListController.notifier).aggregateResult(
        ref.read(sentenceListNotifierProvider.notifier).state.sentenceList,
      );
  if (ref.read(trainingNum) == 2) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ResultPage()),
    );
    ref.read(trainingNum.notifier).state = 1;
  } else {
    ref
        .read(sentenceListNotifierProvider.notifier)
        .fetchRandomSentenceToUseQuestion(num: ref.watch(nBackNumProvider));
    ref.read(trainingNum.notifier).state++;
    ref.read(trainingController.notifier).initSpeech();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const TrainingPage()),
    );
  }
}

bool allQuestionIsDisplayed(WidgetRef ref) =>
    ref.watch(sentenceListNotifierProvider.notifier).state.sentenceList.every(
          (Sentence sentence) => sentence.hasCollected == true,
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
        .read(sentenceListNotifierProvider.notifier)
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
