import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:working_reading/component/disable_button.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/sentence_list/sentence_list_notifier.dart';
import 'package:working_reading/domain/voice_input/voice_input_notifier.dart';
import 'package:working_reading/page/answer_page.dart';
import 'package:working_reading/page/top_page.dart';
import '../color_config.dart';
import '../font_config.dart';

final listIndexProvider = StateProvider.autoDispose((ref) => 0);

class TrainingPage extends HookConsumerWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    // 問題文のリストを検索するためのインデックス番号
    // 問題数を表示する時にも使う
    final listIndex = ref.watch(listIndexProvider);
    // 問題で表示する文章
    final sentenceList = ref.watch(sentenceListNotifierProvider).sentenceList;

    final voiceInput = ref.watch(voiceInputNotifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).getVoiceIndicatorValue(
            sentenceList: sentenceList, questionIndex: listIndex);
      });
      return;
    }, [voiceInput]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).initSpeech();
        // ref.read(voiceInputNotifier.notifier).resetHasSpeechEnoughValue();
      });
      return;
    }, []);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).initSpeech();
      });
      return;
    }, [listIndex]);

    return WillPopScope(
      onWillPop: () async {
        ref.read(voiceInputNotifier.notifier).stopListening();
        Navigator.popUntil(context, (route) => route.isFirst);
        ref.read(listIndexProvider.notifier).state = 0;
        return false;
      },
      child: Scaffold(
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
                  const SizedBox(height: 32),
                  Text(
                    voiceInput.lastWord,
                    style: bodyRegular(blackPrimary),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: LinearProgressIndicator(
                  color: secondary,
                  value: voiceInput.voiceIndicatorValue,
                ),
              ),
              Column(
                children: [
                  if (voiceInput.hasSpeechEnough)
                    PrimaryColorButton(
                      width: double.infinity,
                      height: 64,
                      text: '次へ',
                      onPressed: () async {
                        // 全ての問題を出し切ったら回答ページに遷移するå
                        // リストの長さと比較したいため、インデックス番号に+1する。
                        if (listIndex == sentenceList.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnswerPage()),
                          );
                          ref.read(voiceInputNotifier.notifier).stopListening();
                          ref.read(listIndexProvider.notifier).state = 0;
                        } else {
                          ref.read(listIndexProvider.notifier).state = 1;
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
      ),
    );
  }
}
