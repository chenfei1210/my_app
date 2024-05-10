import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    this.text,
    this.textStyle = const TextStyle(color: Colors.black),
    this.linkText,
    this.linkTextStyle = const TextStyle(color: Colors.blue),
    this.linkUrl = 'https://error',
    super.key,
  });

  final String? text;
  final TextStyle textStyle;
  final String? linkText;
  final TextStyle linkTextStyle;
  final String linkUrl;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: textStyle,
          ),
          TextSpan(
            text: linkText,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                HapticFeedback.vibrate();
                launchUrl(Uri.parse(linkUrl));
              },
          ),
        ],
      ),
    );
  }
}
