import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/training_page.dart';
import '../domain/sentence/sentence.dart';
import '../provider.dart';

final sentenceListProvider = StateProvider((ref) => <Sentence>[]);

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text('ワーキングリーディング', style: headerRegular(blackPrimary)),
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
              style: bodyRegular(blackSecondary),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'N = ',
                  style: bodyRegular(blackSecondary),
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
            PrimaryColorButton(
              width: double.infinity,
              height: 64,
              text: '始める',
              onPressed: () async {
                // ローティング画面を実装する
                try {
                  final sentence = await ref
                      .read(fetchRandomSentenceToUseQuestionProvider.future);
                  ref.watch(sentenceListProvider.notifier).state = sentence;
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TrainingPage(),
                    ),
                    (_) => false,
                  );
                } catch (error) {
                  print(error);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error fetching random sentence'),
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () async {
                // try {
                //   for (Sentence sentence in testDataList) {
                //     await supabase.from("sentence").insert({
                //       "text": sentence.text,
                //       'properNoun': sentence.properNoun
                //     });
                //   }
                //   print('成功しました');
                // } catch (e) {
                //   print('Error: $e');
                // }
              },
              child: Text(
                '遊び方',
                style: bodyRegular(blackSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
