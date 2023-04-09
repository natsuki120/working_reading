import 'package:flutter/material.dart';
import 'package:working_reading/color_config.dart';

import '../font_config.dart';

class DisableButton extends StatelessWidget {
  const DisableButton(
      {Key? key, required this.text, required this.width, required this.height})
      : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: null,
        child: Text(
          text,
          style: bodyBold(blackDisabled.withOpacity(0.3)),
        ),
      ),
    );
  }
}
