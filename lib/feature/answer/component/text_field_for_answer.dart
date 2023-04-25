import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/answer/controller/controller.dart';
import 'package:working_reading/util/result/controller/controller.dart';
import '../../../color_config.dart';
import '../../../component/disable_button.dart';
import '../../../component/primary_color_button.dart';
import '../../../domain/sentence/sentence.dart';
import '../../../domain/sentence_list/sentence_list_notifier.dart';
import '../../../domain/voice_input/voice_input_notifier.dart';
import '../../../font_config.dart';
import '../answer_page.dart';
import '../../../page/result_page.dart';
import '../../training/training_page.dart';

class AnswerArea extends HookConsumerWidget {
  const AnswerArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final nBackNum = ref.watch(nBackNumProvider);
    final textEditingController = useTextEditingController(text: '');
    // final sentenceListNotifier = ref.watch(sentenceListNotifierProvider);
    final controller = ref.watch(answerController);

    FocusNode focusNode = useState(FocusNode()).value;

    final _areFieldsEmpty = useState<bool>(true);

    bool areFieldsEmpty() {
      return textEditingController.text.toString().isEmpty;
    }

    useEffect(() {
      textEditingController.addListener(() {
        _areFieldsEmpty.value = areFieldsEmpty();
      });
      return null;
    }, [textEditingController]);

    Future<void> callNextAction() async {
      await Future.delayed(const Duration(seconds: 1));
      focusNode.unfocus();
      await Future.delayed(const Duration(seconds: 1));
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
            .fetchRandomSentenceToUseQuestion(num: controller.nBackNum);
        ref.read(trainingNum.notifier).state++;
        ref.read(voiceInputNotifier.notifier).initSpeech();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const TrainingPage()),
        );
      }
    }

    bool allQuestionIsDisplayed() => ref
        .watch(sentenceListNotifierProvider.notifier)
        .state
        .sentenceList
        .every(
          (Sentence sentence) => sentence.hasCollected == true,
        );

    void displaySnackBar(String nounWhichHasAnswered) {
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

    String qText = '';
    return Column(
      children: [
        TextField(
          focusNode: focusNode,
          controller: textEditingController,
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
        const SizedBox(height: 32),
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
                  callNextAction();
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
                      for (Sentence sentence in controller.sentenceList) {
                        if (sentence.properNoun == textEditingController.text) {
                          qText = sentence.properNoun;
                        }
                      }
                      displaySnackBar(qText);
                      if (allQuestionIsDisplayed()) {
                        callNextAction();
                      }
                    },
                  ),
          ],
        ),
      ],
    );
  }
}
