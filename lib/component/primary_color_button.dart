import 'package:flutter/material.dart';

import '../color_config.dart';
import '../font_config.dart';

class PrimaryColorButton extends StatelessWidget {
  const PrimaryColorButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primary),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: bodyBold(whitePrimary),
        ),
      ),
    );
  }
}
