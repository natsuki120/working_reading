import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/component/reading_indicator.dart';
import 'package:working_reading/feature/training/component/sentence_area.dart';
import 'package:working_reading/feature/training/component/stateful_button.dart';
import 'package:working_reading/feature/training/provider/provider.dart';

import '../../color_config.dart';
import '../answer/provider/provider.dart';
import 'controller/training_controller.dart';

class NormalModePage extends HookConsumerWidget {
  const NormalModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(trainingController);
    return WillPopScope(
      onWillPop: () async {
        ref.read(trainingController.notifier).stopListening();
        Navigator.popUntil(context, (route) => route.isFirst);
        ref.read(listIndexProvider.notifier).state = 0;
        ref.read(trainingNum.notifier).state = 1;
        return false;
      },
      child: Scaffold(
        appBar: AppBar(backgroundColor: backgroundColor),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SentenceArea(),
                SizedBox(height: 48.h),
                controller.isListening
                    ? Icon(
                        Icons.radio_button_checked,
                        color: Colors.red,
                        size: 40,
                      )
                    : Icon(
                        Icons.radio_button_unchecked,
                        color: blackSecondary,
                        size: 40,
                      ),
                SizedBox(height: 96.h),
                ReadingIndicator(),
                const Spacer(),
                Column(
                  children: [
                    StatefulButton(),
                    SizedBox(height: 68.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
