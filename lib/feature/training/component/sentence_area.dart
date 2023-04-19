import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:substring_highlight/substring_highlight.dart';
import '../../../color_config.dart';
import '../../../domain/sentence_list/sentence_list_notifier.dart';
import '../../../font_config.dart';
import '../../../page/top_page.dart';
import '../training_page.dart';

class SentenceArea extends ConsumerWidget {
  const SentenceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    // 問題文のリストを検索するためのインデックス番号
    // 問題数を表示する時にも使う
    final listIndex = ref.watch(listIndexProvider);
    // 問題で表示する文章
    final sentenceList = ref.watch(sentenceListNotifierProvider).sentenceList;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'N: $nBackNum',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
            const SizedBox(width: 48),
            Text(
              '問: ${listIndex + 1}/$nBackNum',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        SubstringHighlight(
          text: sentenceList[listIndex].text,
          textStyle: bodyRegular(
            blackSecondary,
          ),
          term: sentenceList[listIndex].properNoun,
          textStyleHighlight: bodyBold(blackPrimary),
        ),
      ],
    );
  }
}
