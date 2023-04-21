import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/page/answer_page.dart';
import '../color_config.dart';
import '../font_config.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'N: 2',
                  style: displaySmall(
                    FontWeight.w300,
                    blackSecondary,
                  ),
                ),
                const SizedBox(width: 48),
                Text(
                  '問: 5/6',
                  style: displaySmall(
                    FontWeight.w300,
                    blackSecondary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.pause_circle,
                  size: 50,
                  color: primary,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'ここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに',
              softWrap: true,
              style: bodyRegular(
                blackSecondary,
              ),
            ),
            Spacer(),
            PrimaryColorButton(
              width: double.infinity,
              height: 64,
              text: '次へ',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AnswerPage(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
