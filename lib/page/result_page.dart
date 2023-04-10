import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/secondary_color_button.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/top_page.dart';
import 'package:working_reading/page/training_page.dart';

import '../domain/sentence/sentence_notifier.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 問題数ごと
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: Text(
                      "70.0%",
                      style: headerRegular(blackPrimary),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: primary,
                  ),
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: Text(
                      "70.0%",
                      style: headerRegular(blackPrimary),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: primary,
                  ),
                ],
              ),
            ),
            // 全体
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: Text(
                "70.0%",
                style: headerRegular(blackPrimary),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: primary,
            ),
            const SizedBox(height: 160),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TopPage(),
                      ),
                      (route) => false),
                  child: Text(
                    'ホームに戻る',
                    style: bodyRegular(blackSecondary),
                  ),
                ),
                SecondaryColorButton(
                    width: 200,
                    height: 80,
                    text: 'リトライ',
                    onPressed: () async {
                      await ref
                          .read(sentenceListNotifierProvider.notifier)
                          .fetchRandomSentenceToUseQuestion(num: nBackNum);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TrainingPage(),
                          ),
                          (route) => false);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
