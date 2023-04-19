import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../component/primary_color_button.dart';
import '../../../domain/sentence_list/sentence_list_notifier.dart';
import '../../../domain/voice_input/voice_input_notifier.dart';
import '../../answer/answer_page.dart';
import '../training_page.dart';

class StatefulButton extends ConsumerWidget {
  const StatefulButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 問題文のリストを検索するためのインデックス番号
    // 問題数を表示する時にも使う
    final listIndex = ref.watch(listIndexProvider);
    // 問題で表示する文章
    final sentenceList = ref.watch(sentenceListNotifierProvider).sentenceList;

    return // if (voiceInput.hasSpeechEnough)
        PrimaryColorButton(
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
          ref.read(voiceInputNotifier.notifier).stopListening();
          ref.read(listIndexProvider.notifier).state = 0;
        } else {
          ref.read(listIndexProvider.notifier).state += 1;
        }
      },
      // )
      // else
      //   const DisableButton(
      //     text: '音読してください',
      //     width: double.infinity,
      //     height: 64,
    );
  }
}
