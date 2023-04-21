import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/color_config.dart';
import 'package:working_reading/component/primary_color_button.dart';
import 'package:working_reading/domain/famous_saying/famous_saying.dart';
import 'package:working_reading/domain/sentence_list/sentence_list_notifier.dart';
import 'package:working_reading/font_config.dart';
import 'package:working_reading/page/error_page.dart';
import 'package:working_reading/page/training_page.dart';
import 'how_to_play_page.dart';

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
          data: (data) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Text('ワーキングリーディング', style: headerRegular(blackPrimary)),
                      SizedBox(height: 32.h),
                      SizedBox(height: 16.h),
                      SizedBox(
                        height: 200.h,
                        child: Image.asset(
                            'images/Working Reading Logo Only head.png'),
                      ),
                      SizedBox(height: 48.h),
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
                      SizedBox(height: 48.h),
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
                              ref.read(nBackNumProvider.notifier).state =
                                  value!;
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
                      SizedBox(height: 16.h),
                      TextButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const HowToPlayPage();
                                },
                                fullscreenDialog: true),
                          );
                        },
                        child: Text(
                          '遊び方',
                          style: bodyRegular(blackSecondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          error: (err, stack) => ErrorPage(errorMessage: err.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
