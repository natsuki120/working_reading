import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/feature/training/training_page.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/i18n/strings.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double result1 = 80.0;
    const double result2 = 60.0;
    const double allResult = (result1 + result2) / 2;
    bool isPassed() => allResult >= 70;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          backgroundColor: backgroundColor, automaticallyImplyLeading: false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(questionOne, style: title1Regular(blackSecondary)),
                      CircularPercentIndicator(
                        radius: 60.0.sp,
                        lineWidth: 13.0.sp,
                        animation: true,
                        percent: result1 / 100,
                        center: Text(
                          '$result1%',
                          style: headerRegular(blackPrimary),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: primaryAccent,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(questionTwo, style: title1Regular(blackSecondary)),
                      CircularPercentIndicator(
                        radius: 60.0.sp,
                        lineWidth: 13.0.sp,
                        animation: true,
                        percent: result2 / 100,
                        center: Text(
                          '$result2%',
                          style: headerRegular(blackPrimary),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: primaryAccent,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(overall, style: title1Regular(blackSecondary)),
                  CircularPercentIndicator(
                    radius: 110.0.sp,
                    lineWidth: 13.0.sp,
                    animation: true,
                    percent: allResult / 100,
                    center: Text(
                      '$allResult%',
                      style: headerRegular(blackPrimary),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: primaryAccent,
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              if (isPassed())
                Text(passed, style: title1Regular(blackSecondary))
              else
                Text(failed, style: title1Regular(blackSecondary)),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: Text(
                      home,
                      style: bodyRegular(blackPrimary),
                    ),
                  ),
                  PrimaryColorButton(
                      width: 200,
                      height: 80,
                      text: retry,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const TrainingPage(),
                          ),
                        );
                      })
                ],
              ),
              SizedBox(height: 48.h),
            ],
          ),
        ),
      ),
    );
  }
}
