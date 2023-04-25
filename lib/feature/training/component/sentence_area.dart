import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:working_reading/feature/training/controller/training_controller.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';

class SentenceArea extends ConsumerWidget {
  const SentenceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(trainingController);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'N: ${controller.nBackNum}',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
            const SizedBox(width: 48),
            Text(
              '問: ${controller.listIndex + 1}/${controller.nBackNum}',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        SubstringHighlight(
          text: controller.sentenceList[controller.listIndex].text,
          textStyle: bodyRegular(
            blackSecondary,
          ),
          term: controller.sentenceList[controller.listIndex].properNoun,
          textStyleHighlight: bodyBold(blackPrimary),
        ),
      ],
    );
  }
}
