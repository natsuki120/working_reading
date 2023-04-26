import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';
import '../provider/provider.dart';

class SelectNBackArea extends ConsumerWidget {
  const SelectNBackArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nBackNum = ref.watch(nBackNumProvider);
    return Row(
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
    );
  }
}
