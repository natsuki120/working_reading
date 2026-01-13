import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working_reading/i18n/strings.dart';

import '../../../../color_config.dart';
import '../../../../component/primary_color_button.dart';
import '../../../../font_config.dart';
import '../../../result/result_page.dart';

class AnswerArea extends StatefulWidget {
  const AnswerArea({Key? key}) : super(key: key);

  @override
  State<AnswerArea> createState() => _AnswerAreaState();
}

class _AnswerAreaState extends State<AnswerArea> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _areFieldsEmpty = true;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {
      setState(() {
        _areFieldsEmpty = _textEditingController.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: _focusNode,
          controller: _textEditingController,
          decoration: InputDecoration(
            hintText: hintEnterAnswer,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: primaryAccent,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 32.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 64,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(
                    side: BorderSide(color: primary),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ResultPage(),
                    ),
                  );
                },
                child: Text(
                  giveUp,
                  style: bodyBold(primary),
                ),
              ),
            ),
            const Spacer(),
            PrimaryColorButton(
              width: 150,
              height: 64,
              text: grade,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ResultPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
