import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/util/sentence/sentence.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../../color_config.dart';
import '../../../../component/disable_button.dart';
import '../../../../component/primary_color_button.dart';
import '../../../../font_config.dart';
import 'function/function.dart';

class AnswerArea extends HookConsumerWidget {
  const AnswerArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController(text: '');
    final sentenceList = ref.watch(utilSentenceListNotifier).sentenceList;

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
                      .read(utilSentenceListNotifier.notifier)
                      .displayAllAnswer();
                  await Future.delayed(const Duration(seconds: 1));
                  focusNode.unfocus();
                  await Future.delayed(const Duration(seconds: 1));
                  callNextAction(ref: ref, context: context);
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
                      for (UtilSentence sentence in sentenceList) {
                        if (sentence.properNoun == textEditingController.text) {
                          qText = sentence.properNoun;
                        }
                      }
                      displaySnackBar(
                        nounWhichHasAnswered: qText,
                        textEditingController: textEditingController,
                        ref: ref,
                        context: context,
                      );
                      if (allQuestionIsDisplayed(ref)) {
                        await Future.delayed(const Duration(seconds: 1));
                        focusNode.unfocus();
                        await Future.delayed(const Duration(seconds: 1));
                        await callNextAction(ref: ref, context: context);
                      }
                    },
                  ),
          ],
        ),
      ],
    );
  }
}
