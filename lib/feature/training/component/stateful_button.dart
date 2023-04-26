import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/controller/training_controller.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../component/disable_button.dart';
import '../../../component/primary_color_button.dart';
import '../../answer/answer_page.dart';
import '../provider/provider.dart';

class StatefulButton extends ConsumerWidget {
  const StatefulButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(trainingController);
    final listIndex = ref.watch(listIndexProvider);
    final sentenceList = ref.watch(utilSentenceListNotifier).sentenceList;

    return controller.readingEnough
        ? PrimaryColorButton(
            width: double.infinity,
            height: 64,
            text: '次へ',
            onPressed: () async {
              // 全ての問題を出し切ったら回答ページに遷移する
              // リストの長さと比較したいため、インデックス番号に+1する。
              if (listIndex == sentenceList.length - 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnswerPage()),
                );
                ref.read(trainingController.notifier).stopListening();
                ref.read(listIndexProvider.notifier).state = 0;
              } else {
                ref.read(listIndexProvider.notifier).state += 1;
              }
            },
          )
        : const DisableButton(
            text: '音読してください',
            width: double.infinity,
            height: 64,
          );
  }
}
