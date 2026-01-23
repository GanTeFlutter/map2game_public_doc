import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final class CustomRichText extends StatelessWidget {

  const CustomRichText({
    required this.text1, required this.text2, super.key,
    this.fontWeight1,
    this.fontWeight2,
    this.onTap,
  });
  final String text1;
  final String text2;
  final FontWeight? fontWeight1;
  final FontWeight? fontWeight2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextSpan(
              text: text2,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
