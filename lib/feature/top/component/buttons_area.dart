import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../color_config.dart';
import '../../../component/primary_color_button.dart';
import '../../../font_config.dart';
import '../../how_to_play/how_to_play_page.dart';
import '../../training/training_page.dart';

class ButtonsArea extends StatelessWidget {
  const ButtonsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryColorButton(
          width: double.infinity,
          height: 64,
          text: '始める',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const TrainingPage();
                },
              ),
            );
          },
        ),
        SizedBox(height: 16.h),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HowToPlayPage();
                  },
                  fullscreenDialog: true),
            );
          },
          child: Text(
            '遊び方',
            style: bodyRegular(blackSecondary),
          ),
        ),
      ],
    );
  }
}
