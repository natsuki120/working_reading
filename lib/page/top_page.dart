import 'package:flutter/material.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/training_page.dart';

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
          children: [
            const SizedBox(height: 16),
            Text('ワーキングリーディング', style: header(white)),
            const SizedBox(height: 32),
            const SizedBox(height: 16),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: primary,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'N = ',
                  style: bodyRegular(white),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 39,
                  width: 39,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                  ),
                ),
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
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TrainingPage())),
                child: Text(
                  '始める',
                  style: bodyBold(white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text(
                '遊び方',
                style: bodyRegular(
                  white.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
