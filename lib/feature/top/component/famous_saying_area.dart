import 'package:flutter/material.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';
import '../domain/famous_saying/famous_saying.dart';

class FamousSayingArea extends StatelessWidget {
  const FamousSayingArea({Key? key, required this.famousSaying})
      : super(key: key);

  final FamousSaying famousSaying;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${famousSaying.content}\n',
          style: bodyRegular(blackSecondary),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            famousSaying.author,
            style: bodyRegular(blackSecondary),
          ),
        ),
      ],
    );
  }
}
