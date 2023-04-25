import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/result/result_notifier.dart';

import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/top_page.dart';
import 'package:working_reading/page/training_page.dart';
import '../domain/sentence_list/sentence_list_notifier.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    final resultList = ref.watch(resultListNotifier);
    final allResult = (resultList[0].percent + resultList[1].percent) / 2;
    bool isPassed() => allResult >= 70;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 32.h),
              // 問題数ごと
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('１問目', style: title1Regular(blackSecondary)),
                      CircularPercentIndicator(
                        radius: 60.0.sp,
                        lineWidth: 13.0.sp,
                        animation: true,
                        percent: resultList[0].percent / 100,
                        center: Text(
                          '${resultList[0].percent}%',
                          style: headerRegular(blackPrimary),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: primaryAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('２問目', style: title1Regular(blackSecondary)),
                      CircularPercentIndicator(
                        radius: 60.0.sp,
                        lineWidth: 13.0.sp,
                        animation: true,
                        percent: resultList[1].percent / 100,
                        center: Text(
                          '${resultList[1].percent}%',
                          style: headerRegular(blackPrimary),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: primaryAccent,
                      ),
                    ],
                  ),
                ],
              ),
              // 全体
              Column(
                children: [
                  Text('総合', style: title1Regular(blackSecondary)),
                  CircularPercentIndicator(
                    radius: 110.0.sp,
                    lineWidth: 13.0.sp,
                    animation: true,
                    percent: allResult / 100,
                    center: Text(
                      "$allResult%",
                      style: headerRegular(blackPrimary),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: primaryAccent,
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              if (isPassed())
                Text('合格！', style: title1Regular(blackSecondary))
              else
                Text('不合格', style: title1Regular(blackSecondary)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                      resultList.clear();
                    },
                    child: Text(
                      'ホームに戻る',
                      style: bodyRegular(blackPrimary),
                    ),
                  ),
                  PrimaryColorButton(
                      width: 200,
                      height: 80,
                      text: 'リトライ',
                      onPressed: () async {
                        await ref
                            .read(sentenceListNotifierProvider.notifier)
                            .fetchRandomSentenceToUseQuestion(num: nBackNum);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TrainingPage(),
                          ),
                        );
                        resultList.clear();
                      }),
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
