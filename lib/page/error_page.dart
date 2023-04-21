import 'package:flutter/material.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/font_config.dart';

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
            Text('おっと！', style: displayMedium(FontWeight.w600, white)),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '予期せぬエラーが発生しました。\nこの画面をスクショし、開発者にいちゃもんをつけてやりましょう。',
                  style: bodyRegular(white),
                ),
                SizedBox(height: 48),
                Text('お手数ですが、アプリを再起動してください。', style: bodyRegular(white)),
                SizedBox(height: 96),
                Text(
                  'エラーメッセージ: $errorMessage',
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
