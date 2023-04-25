import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';
import '../controller/controller.dart';

class Question extends ConsumerWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(answerController);
    return Wrap(
      children: [
        for (int i = 1; i <= controller.nBackNum; i++)
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
                      if (controller.sentenceList[i - 1].hasCollected)
                        Text(
                          controller.sentenceList[i - 1].properNoun,
                          style: title1Regular(blackSecondary),
                        ),
                      if (controller.sentenceList[i - 1].giveUp)
                        Text(
                          controller.sentenceList[i - 1].properNoun,
                          style: title1Regular(Colors.red),
                        ),
                      if (!controller.sentenceList[i - 1].hasCollected &&
                          !controller.sentenceList[i - 1].giveUp)
                        Text('？？', style: title1Regular(blackSecondary))
                    ],
                  ),
                  const SizedBox(height: 64),
                ],
              ),
              const SizedBox(width: 32),
            ],
          ),
      ],
    );
  }
}
