import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/feature/top/component/buttons_area.dart';
import 'package:working_reading/feature/top/component/famous_saying_area.dart';
import 'package:working_reading/feature/top/component/select_n_back_area.dart';
import 'package:working_reading/feature/top/component/title_and_logo_area.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(backgroundColor: backgroundColor),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const TitleAndLogoArea(),
              SizedBox(height: 48.h),
              const FamousSayingArea(),
              SizedBox(height: 48.h),
              const SelectNBackArea(),
              const Spacer(),
              const ButtonsArea(),
            ],
          ),
        ),
      ),
    );
  }
}
