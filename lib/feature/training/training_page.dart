import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/component/reading_indicator.dart';
import 'package:working_reading/feature/training/component/sentence_area.dart';
import 'package:working_reading/feature/training/component/stateful_button.dart';
import 'package:working_reading/feature/answer/answer_page.dart';
import '../../color_config.dart';
import 'controller/training_controller.dart';

final listIndexProvider = StateProvider((ref) => 0);

class TrainingPage extends ConsumerWidget {
  const TrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        ref.read(trainingController.notifier).stopListening();
        Navigator.popUntil(context, (route) => route.isFirst);
        ref.read(trainingController.notifier).resetListIndex();
        ref.read(trainingNum.notifier).state = 1;
        return false;
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: backgroundColor),
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SentenceArea(),
                  const SizedBox(height: 32),
                  ReadingIndicator(),
                ],
              ),
              Column(
                children: [
                  StatefulButton(),
                  const SizedBox(height: 80),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
