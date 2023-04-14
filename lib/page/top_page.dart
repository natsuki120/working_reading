import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/famous_saying/famous_saying.dart';
import 'package:working_reading/domain/sentence_list/sentence_list_notifier.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/training_page.dart';

final nBackNumProvider = StateProvider((ref) => 1);

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final famousSaying = ref.watch(fetchRandomFamousSaying);
    final nBackNum = ref.watch(nBackNumProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: famousSaying.when(
          data: (data) => Padding(
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
                    Column(
                      children: [
                        Text(
                          '${data.content}\n',
                          style: bodyRegular(blackSecondary),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            data.author,
                            style: bodyRegular(blackSecondary),
                          ),
                        ),
                      ],
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
                        DropdownButton(
                          items: List.generate(
                            6,
                            (index) => DropdownMenuItem<int>(
                              value: index + 1,
                              child: Text('${index + 1}'),
                            ),
                          ),
                          onChanged: (int? value) {
                            ref.read(nBackNumProvider.notifier).state = value!;
                          },
                          value: nBackNum,
                        ),
                      ],
                    ),
                    const Spacer(),
                    PrimaryColorButton(
                      width: double.infinity,
                      height: 64,
                      text: '始める',
                      onPressed: () async {
                        //TODO ローティング画面を実装する
                        EasyLoading.show(status: '読み込み中');
                        await ref
                            .read(sentenceListNotifierProvider.notifier)
                            .fetchRandomSentenceToUseQuestion(num: nBackNum);
                        EasyLoading.dismiss();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const TrainingPage();
                            },
                          ),
                        );
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
          error: (err, stack) => Text(err.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
