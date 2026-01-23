import 'package:flutter/material.dart';

final class AppTitleDescriptionText extends StatelessWidget {
  const AppTitleDescriptionText({
    required this.text,
    required this.description,
    super.key,
  });

  final String text;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
