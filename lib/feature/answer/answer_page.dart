import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/answer/component/answer_area.dart';
import 'package:working_reading/feature/answer/component/text_field_for_answer.dart';
import '../../color_config.dart';

// トレーニングの回数を記録するprovider
// 2回トレーニングしたら結果発表画面に遷移させる
final trainingNum = StateProvider((ref) => 1);

class AnswerPage extends HookConsumerWidget {
  const AnswerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Question(),
            const Spacer(),
            AnswerArea(),
            const SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
