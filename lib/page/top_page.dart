import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/training_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Text('ワーキングリーディング', style: headerRegular(blackPrimary)),
              SizedBox(height: 32.h),
              SizedBox(height: 16.h),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: primary,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 48.h),
              Text(
                'ここに適当な名言的なの載せるここに適当な名言的なの載せるここにイタリックにする',
                style: bodyRegular(blackSecondary),
              ),
              SizedBox(height: 48.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'N = ',
                    style: bodyRegular(blackSecondary),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 39.h,
                    width: 39.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 48.h),
              PrimaryColorButton(
                width: double.infinity,
                height: 64,
                text: '始める',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TrainingPage()),
                ),
              ),
              SizedBox(height: 16.h),
              TextButton(
                onPressed: () {},
                child: Text(
                  '遊び方',
                  style: bodyRegular(blackSecondary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
