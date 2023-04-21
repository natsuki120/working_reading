import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/component/disable_button.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/result/result_notifier.dart';
import 'package:working_reading/domain/sentence_list/sentence_list_notifier.dart';
import 'package:working_reading/domain/voice_input/voice_input_notifier.dart';
import 'package:working_reading/page/result_page.dart';
import 'package:working_reading/page/top_page.dart';
import 'package:working_reading/page/training_page.dart';
import '../color_config.dart';
import '../domain/sentence/sentence.dart';
import '../font_config.dart';

// トレーニングの回数を記録するprovider
// 2回トレーニングしたら結果発表画面に遷移させる
final trainingNum = StateProvider((ref) => 1);

class AnswerPage extends HookConsumerWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);

    final controller = useTextEditingController(text: '');
    final sentenceListNotifier = ref.watch(sentenceListNotifierProvider);

    FocusNode focusNode = useState(FocusNode()).value;

    final _areFieldsEmpty =
        useState<bool>(true); // controll the button based on Text.isEmpty

    bool areFieldsEmpty() {
      return controller.text.toString().isEmpty;
    }

    useEffect(() {
      controller.addListener(() {
        _areFieldsEmpty.value = areFieldsEmpty();
      });
      return null;
    }, [controller]);

    String qText = '';
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Wrap(
                children: [
                  for (int i = 1; i <= nBackNum; i++)
                    Wrap(
                      children: [
                        Column(
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  '問$i. ',
                                  style: title1Regular(blackSecondary),
                                ),
                                if (sentenceListNotifier
                                    .sentenceList[i - 1].hasCollected)
                                  Text(
                                    sentenceListNotifier
                                        .sentenceList[i - 1].properNoun,
                                    style: title1Regular(blackSecondary),
                                  ),
                                if (sentenceListNotifier
                                    .sentenceList[i - 1].giveUp)
                                  Text(
                                    sentenceListNotifier
                                        .sentenceList[i - 1].properNoun,
                                    style: title1Regular(Colors.red),
                                  ),
                                if (!sentenceListNotifier
                                        .sentenceList[i - 1].hasCollected &&
                                    !sentenceListNotifier
                                        .sentenceList[i - 1].giveUp)
                                  Text('？？',
                                      style: title1Regular(blackSecondary))
                              ],
                            ),
                            SizedBox(height: 64.h),
                          ],
                        ),
                        const SizedBox(width: 32),
                      ],
                    ),
                ],
              ),
              const Spacer(),
              // 回答用のテキストフィールド
              TextField(
                focusNode: focusNode,
                controller: controller,
                decoration: InputDecoration(
                  hintText: '回答を入力してください',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: primaryAccent,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              // ボタン
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 64,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(
                          side: BorderSide(color: primary),
                        ),
                      ),
                      onPressed: () async {
                        ref
                            .read(sentenceListNotifierProvider.notifier)
                            .displayAllAnswer();
                        await Future.delayed(const Duration(seconds: 1));
                        focusNode.unfocus();
                        await Future.delayed(const Duration(seconds: 1));
                        ref
                            .read(resultNotifier.notifier)
                            .aggregateResultFromEachSentence(ref
                                .watch(sentenceListNotifierProvider.notifier)
                                .state
                                .sentenceList);
                        ref
                            .read(resultListNotifier.notifier)
                            .state
                            .add(ref.read(resultNotifier.notifier).state);
                        if (ref.watch(trainingNum) == 2) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => const ResultPage()),
                          );
                          ref.read(trainingNum.notifier).state = 1;
                        } else {
                          ref
                              .read(sentenceListNotifierProvider.notifier)
                              .fetchRandomSentenceToUseQuestion(num: nBackNum);
                          ref.read(trainingNum.notifier).state++;
                          ref.read(voiceInputNotifier.notifier).initSpeech();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => const TrainingPage()),
                          );
                        }
                      },
                      child: Text(
                        'ギブアップ',
                        style: bodyBold(primary),
                      ),
                    ),
                  ),
                  const Spacer(),
                  _areFieldsEmpty.value
                      ? const DisableButton(
                          text: '採点する',
                          width: 150,
                          height: 64,
                        )
                      : PrimaryColorButton(
                          width: 150,
                          height: 64,
                          text: '採点する',
                          onPressed: () async {
                            for (Sentence sentence
                                in sentenceListNotifier.sentenceList) {
                              if (sentence.properNoun == controller.text) {
                                qText = sentence.properNoun;
                              }
                            }
                            if (qText == '') {
                              const snackBar = SnackBar(
                                content: Text('ハズレです'),
                                duration: Duration(seconds: 1),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              controller.clear();
                            } else {
                              ref
                                  .read(sentenceListNotifierProvider.notifier)
                                  .changeSentenceToCollected(
                                      noun: controller.text);
                              final snackBar = SnackBar(
                                backgroundColor: Colors.green,
                                content: Text(
                                  'あたり！',
                                  style: bodyRegular(whitePrimary),
                                ),
                                duration: const Duration(seconds: 1),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              controller.clear();
                            }
                            if (ref
                                .watch(sentenceListNotifierProvider.notifier)
                                .state
                                .sentenceList
                                .every((Sentence sentence) =>
                                    sentence.hasCollected == true)) {
                              await Future.delayed(const Duration(seconds: 1));
                              focusNode.unfocus();
                              await Future.delayed(const Duration(seconds: 1));
                              ref
                                  .read(resultNotifier.notifier)
                                  .aggregateResultFromEachSentence(ref
                                      .watch(
                                          sentenceListNotifierProvider.notifier)
                                      .state
                                      .sentenceList);
                              ref
                                  .read(resultListNotifier.notifier)
                                  .state
                                  .add(ref.read(resultNotifier.notifier).state);
                              if (ref.watch(trainingNum) == 2) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => const ResultPage()),
                                );
                                ref.read(trainingNum.notifier).state = 1;
                              } else {
                                ref
                                    .read(sentenceListNotifierProvider.notifier)
                                    .fetchRandomSentenceToUseQuestion(
                                        num: nBackNum);
                                ref.read(trainingNum.notifier).state++;
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => const TrainingPage()),
                                );
                              }
                            }
                          },
                        ),
                ],
              ),
              SizedBox(height: 68.h),
            ],
          ),
        ),
      ),
    );
  }
}
