import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/i18n/strings.dart';

import '../../../color_config.dart';
import '../../../font_config.dart';

class QuestionArea extends StatelessWidget {
  const QuestionArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 1; i <= 2; i++)
          Wrap(
            children: [
              Column(
                children: [
                  Wrap(
                    children: [
                      Text(
                        '$questionPrefix$i. ',
                        style: title1Regular(blackSecondary),
                      ),
                      Text(unknownMarks, style: title1Regular(blackSecondary))
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
