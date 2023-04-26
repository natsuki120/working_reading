import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/feature/training/controller/training_controller.dart';
import 'package:working_reading/feature/training/provider/provider.dart';
import 'package:working_reading/util/sentence_list/controller/sentence_list_notifier.dart';
import '../../../color_config.dart';

class ReadingIndicator extends HookConsumerWidget {
  const ReadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(trainingController);
    final listIndex = ref.watch(listIndexProvider);
    final sentenceList = ref.watch(utilSentenceListNotifier).sentenceList;
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(trainingController.notifier).getVoiceIndicatorValue(
            questionIndex: listIndex, sentenceList: sentenceList);
      });
      return;
    }, [controller]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(trainingController.notifier).initSpeech();
      });
      return;
    }, [listIndex]);

    return SizedBox(
      width: double.infinity,
      child: LinearProgressIndicator(
        color: primaryAccent,
        value: controller.voiceIndicatorValue,
      ),
    );
  }
}
