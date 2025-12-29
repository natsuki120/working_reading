import 'package:flutter/material.dart';
import '../../../color_config.dart';

class ReadingIndicator extends StatelessWidget {
  const ReadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: LinearProgressIndicator(
        color: primaryAccent,
        value: 0.0,
      ),
    );
  }
}
