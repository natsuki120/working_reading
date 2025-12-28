import 'package:flutter/material.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/i18n/strings.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, required this.errorMessage}) : super(key: key);

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Text(oops, style: displayMedium(FontWeight.w600, white)),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  unexpectedError,
                  style: bodyRegular(white),
                ),
                SizedBox(height: 48),
                Text(pleaseRestart, style: bodyRegular(white)),
                SizedBox(height: 96),
                Text(
                  '${errorMessagePrefix} $errorMessage',
                  style: bodyBold(white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
