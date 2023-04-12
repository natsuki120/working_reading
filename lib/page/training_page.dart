import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:working_reading/component/disable_button.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/sentence/sentence_notifier.dart';
import 'package:working_reading/domain/voice_input/voice_input_notifier.dart';
import 'package:working_reading/page/answer_page.dart';
import 'package:working_reading/page/top_page.dart';
import '../color_config.dart';
import '../font_config.dart';

class TrainingPage extends HookConsumerWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    // 問題文のリストを検索するためのインデックス番号
    // 問題数を表示する時にも使う
    final listIndex = useState(0);
    // 問題で表示する文章
    final sentenceList = ref.watch(sentenceListNotifierProvider).sentenceList;

    final voiceInput = ref.watch(voiceInputNotifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .watch(voiceInputNotifier.notifier)
            .makeTappableNextButtonIfSpeechEnoughThan(
                sentenceList[listIndex.value]);
      });
      return;
    }, [voiceInput]);

    return Scaffold(
      appBar: AppBar(backgroundColor: backgroundColor),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                      '問: ${listIndex.value + 1}/$nBackNum',
                      style: displaySmall(
                        FontWeight.w300,
                        blackSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SubstringHighlight(
                  text: sentenceList[listIndex.value].text,
                  textStyle: bodyRegular(
                    blackSecondary,
                  ),
                  term: sentenceList[listIndex.value].properNoun,
                  textStyleHighlight: bodyBold(blackPrimary),
                ),
                const SizedBox(height: 32),
                Text(
                  voiceInput.lastWord,
                  style: bodyRegular(blackPrimary),
                )
              ],
            ),
            Column(
              children: [
                if (voiceInput.hasSpeechEnough)
                  PrimaryColorButton(
                    width: double.infinity,
                    height: 64,
                    text: '次へ',
                    onPressed: () async {
                      ref.read(voiceInputNotifier.notifier).stopListening();
                      // 全ての問題を出し切ったら回答ページに遷移する
                      // リストの長さと比較したいため、インデックス番号に+1する。
                      if (listIndex.value == sentenceList.length - 1) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnswerPage()),
                            (_) => false);
                        listIndex.value = 0;
                      } else {
                        listIndex.value++;
                      }
                    },
                  )
                else
                  const DisableButton(
                    text: '音読してください',
                    width: double.infinity,
                    height: 64,
                  ),
                const SizedBox(height: 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
