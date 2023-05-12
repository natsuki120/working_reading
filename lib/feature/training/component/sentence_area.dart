import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:working_reading/feature/top/provider/provider.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';
import '../provider/provider.dart';

class SentenceArea extends ConsumerWidget {
  const SentenceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    final listIndex = ref.watch(listIndexProvider);
    final sentenceList = ref.watch(utilSentenceListNotifier).sentenceList;
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
            SizedBox(width: 48.w),
            Text(
              '問: ${listIndex + 1}/$nBackNum',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),
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
