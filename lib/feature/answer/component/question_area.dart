import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';
import '../../top/provider/provider.dart';

class QuestionArea extends ConsumerWidget {
  const QuestionArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sentenceList = ref.watch(utilSentenceListNotifier).sentenceList;
    final nBackNum = ref.watch(nBackNumProvider);
    return Wrap(
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
                      if (sentenceList[i - 1].hasCollected)
                        Text(
                          sentenceList[i - 1].properNoun,
                          style: title1Regular(blackSecondary),
                        ),
                      if (sentenceList[i - 1].giveUp)
                        Text(
                          sentenceList[i - 1].properNoun,
                          style: title1Regular(Colors.red),
                        ),
                      if (!sentenceList[i - 1].hasCollected &&
                          !sentenceList[i - 1].giveUp)
                        Text('？？', style: title1Regular(blackSecondary))
                    ],
                  ),
                  SizedBox(height: 64.h),
                ],
              ),
              const SizedBox(width: 32),
            ],
          ),
      ],
    );
  }
}
