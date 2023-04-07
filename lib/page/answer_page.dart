import 'package:flutter/material.dart';
import 'package:working_reading/page/result_page.dart';
import '../color_config.dart';
import '../font_config.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(backgroundColor: backgroundColor),
      body: Column(
        children: [
          // TODO 左に偏ってるからなんとかする
          Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
            for (int i = 1; i <= 5; i++)
              Wrap(
                children: [
                  Column(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            '問1. ',
                            style: title1Regular(blackSecondary),
                          ),
                          Text(
                            '？？？？',
                            style: title1Regular(blackSecondary),
                          ),
                        ],
                      ),
                      const SizedBox(height: 64),
                    ],
                  ),
                  const SizedBox(width: 16),
                ],
              ),
          ]),
          // ボタン
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 64,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(
                      side: BorderSide(color: primary),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ギブアップ',
                    style: bodyBold(primary),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                width: 150,
                height: 64,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primary),
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ResultPage())),
                  child: Text(
                    '採点する',
                    style: bodyBold(whitePrimary),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
