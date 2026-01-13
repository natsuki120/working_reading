import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/i18n/strings.dart';

import '../../../color_config.dart';
import '../../../font_config.dart';

class TitleAndLogoArea extends StatelessWidget {
  const TitleAndLogoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Text(appTitle, style: headerRegular(blackPrimary)),
        SizedBox(height: 32.h),
        SizedBox(height: 16.h),
        SizedBox(
          height: 200.h,
          child: Image.asset(
            'images/Working Reading Logo Only head.png',
          ),
        ),
      ],
    );
  }
}
