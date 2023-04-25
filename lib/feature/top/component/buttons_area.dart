import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:working_reading/component/provider.dart';
import '../../../color_config.dart';
import '../../../component/disable_button.dart';
import '../../../component/primary_color_button.dart';
import '../../../font_config.dart';
import '../../../util/sentence_list/sentence_list_notifier.dart';
import '../../how_to_play/how_to_play_page.dart';
import '../../training/training_page.dart';
import '../controller/controller.dart';

class ButtonsArea extends ConsumerWidget {
  const ButtonsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    final hasTapped = ref.watch(hasTappedButton);
    return Column(
      children: [
        hasTapped
            ? DisableButton(text: '読み込み中', width: double.infinity, height: 64)
            : PrimaryColorButton(
                width: double.infinity,
                height: 64,
                text: '始める',
                onPressed: () async {
                  ref.read(hasTappedButton.notifier).state = true;
                  await ref
                      .read(sentenceListNotifierProvider.notifier)
                      .fetchRandomSentenceToUseQuestion(num: nBackNum);
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
    );
  }
}
