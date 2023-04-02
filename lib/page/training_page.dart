import 'package:flutter/material.dart';
import '../color_config.dart';
import '../font_config.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryPale,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'N: 2',
                  style: displaySmall(
                    FontWeight.w300,
                    white.withOpacity(0.6),
                  ),
                ),
                const SizedBox(width: 48),
                Text(
                  '問: 5/6',
                  style: displaySmall(
                    FontWeight.w300,
                    white.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.pause_circle,
                  size: 50,
                  color: primary,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'ここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せるここに文章を載せる',
              softWrap: true,
              style: bodyRegular(
                white.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 320),
            SizedBox(
              width: double.infinity,
              height: 64,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primary),
                ),
                onPressed: () {},
                child: Text(
                  '次へ',
                  style: bodyBold(white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
