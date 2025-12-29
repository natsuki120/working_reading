import 'package:flutter/material.dart';
import '../../../color_config.dart';
import '../../../font_config.dart';

class SelectNBackArea extends StatefulWidget {
  const SelectNBackArea({Key? key}) : super(key: key);

  @override
  State<SelectNBackArea> createState() => _SelectNBackAreaState();
}

class _SelectNBackAreaState extends State<SelectNBackArea> {
  int _nBackNum = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'N = ',
          style: bodyRegular(blackSecondary),
        ),
        const SizedBox(width: 16),
        DropdownButton<int>(
          items: List.generate(
            6,
            (index) => DropdownMenuItem<int>(
              value: index + 1,
              child: Text('${index + 1}'),
            ),
          ),
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                _nBackNum = value;
              });
            }
          },
          value: _nBackNum,
        ),
      ],
    );
  }
}
