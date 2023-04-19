import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../color_config.dart';
import '../../../domain/sentence_list/sentence_list_notifier.dart';
import '../../../domain/voice_input/voice_input_notifier.dart';
import '../training_page.dart';

class ReadingIndicator extends HookConsumerWidget {
  const ReadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final voiceInput = ref.watch(voiceInputNotifier);
    final sentenceList = ref.watch(sentenceListNotifierProvider).sentenceList;
    final listIndex = ref.watch(listIndexProvider);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).getVoiceIndicatorValue(
            sentenceList: sentenceList, questionIndex: listIndex);
      });
      return;
    }, [voiceInput]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.watch(voiceInputNotifier.notifier).initSpeech();
      });
      return;
    }, [listIndex]);

    return SizedBox(
      width: double.infinity,
      child: LinearProgressIndicator(
        color: primaryAccent,
        value: voiceInput.voiceIndicatorValue,
      ),
    );
  }
}
