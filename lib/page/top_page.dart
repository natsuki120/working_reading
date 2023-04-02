import 'package:flutter/material.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/font_config.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryPale,
      appBar: AppBar(
        backgroundColor: primaryPale,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Text('ワーキングリーディング', style: header(white)),
            ),
            const SizedBox(height: 32),
            const SizedBox(height: 16),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 48),
            Text(
              'ここに適当な名言的なの載せるここに適当な名言的なの載せるここに適当な名言的なの載せるここに適当な名言的なの載せるここに適当な名言的なの載せるイタリックにする',
              style: bodyRegular(white),
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Text(
                  'N = ',
                  style: bodyRegular(white),
                ),
                Container(),
              ],
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              height: 64,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primary),
                ),
                onPressed: () {},
                child: Text(
                  '始める',
                  style: bodyRegular(white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
