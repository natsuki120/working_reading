import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/i18n/strings.dart';

import '../../../color_config.dart';
import '../../../font_config.dart';

class SentenceArea extends StatelessWidget {
  const SentenceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            SizedBox(width: 48.w),
            Text(
              '$questionProgressPrefix 1/2',
              style: displaySmall(
                FontWeight.w300,
                blackSecondary,
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),
        Text(
          'サンプルの文章がここに表示されます。重要な単語はハイライトされます。',
          style: bodyRegular(blackSecondary),
        ),
      ],
    );
  }
}
