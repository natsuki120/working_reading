import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/answer/component/question_area.dart';
import 'package:working_reading/feature/answer/component/text_field_for_answer/text_field_for_answer_area.dart';
import '../../color_config.dart';

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
            QuestionArea(),
            const Spacer(),
            AnswerArea(),
            const SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
