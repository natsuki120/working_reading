import 'package:flutter/material.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';

class TitleAndLogoArea extends StatelessWidget {
  const TitleAndLogoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text('ワーキングリーディング', style: headerRegular(blackPrimary)),
        const SizedBox(height: 32),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: Image.asset(
            'images/Working Reading Logo Only head.png',
          ),
        ),
      ],
    );
  }
}
