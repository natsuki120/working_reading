import 'package:flutter/material.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';

class FamousSayingArea extends StatelessWidget {
  const FamousSayingArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '読書は心の栄養である\n',
          style: bodyRegular(blackSecondary),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '- サンプル著者',
            style: bodyRegular(blackSecondary),
          ),
        ),
      ],
    );
  }
}
