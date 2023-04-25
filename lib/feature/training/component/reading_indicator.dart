import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/controller/training_controller.dart';
import '../../../color_config.dart';
import '../../../domain/voice_input/voice_input_notifier.dart';

class ReadingIndicator extends HookConsumerWidget {
  const ReadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(trainingController);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .watch(trainingController.notifier)
            .getVoiceIndicatorValue(questionIndex: controller.listIndex);
      });
      return;
    }, [controller]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).initSpeech();
      });
      return;
    }, [controller.listIndex]);

    return SizedBox(
      width: double.infinity,
      child: LinearProgressIndicator(
        color: primaryAccent,
        value: controller.voiceIndicatorValue,
      ),
    );
  }
}
