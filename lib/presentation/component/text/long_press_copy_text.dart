import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';

class LongPressCopyText extends StatelessWidget {
  const LongPressCopyText(
    this.text, {
    required this.toastTitle,
    this.isShowToast = true,
    super.key,
  });

  final Text text;

  final String toastTitle;
  final bool isShowToast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        HapticFeedback.vibrate();
        Clipboard.setData(ClipboardData(text: text.data.toString()));
        if (isShowToast) {
          showToast(
            '$toastTitleをコビーしました\n(debug)${text.data.toString()}',
            duration: const Duration(milliseconds: 1500),
            position: ToastPosition.bottom,
            backgroundColor: Colors.lightBlue,
            radius: 13,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          );
        }
      },
      child: text,
    );
  }
}
