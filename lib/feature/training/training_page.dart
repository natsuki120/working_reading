import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/feature/training/component/reading_indicator.dart';
import 'package:working_reading/feature/training/component/sentence_area.dart';
import 'package:working_reading/feature/answer/answer_page.dart';
import 'package:working_reading/component/primary_color_button.dart';

import '../../color_config.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, (route) => route.isFirst);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: backgroundColor),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SentenceArea(),
                SizedBox(height: 48.h),
                Icon(
                  Icons.radio_button_unchecked,
                  color: blackSecondary,
                  size: 40,
                ),
                SizedBox(height: 96.h),
                const ReadingIndicator(),
                const Spacer(),
                Column(
                  children: [
                    PrimaryColorButton(
                      width: double.infinity,
                      height: 64,
                      text: '次へ',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AnswerPage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 68.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
