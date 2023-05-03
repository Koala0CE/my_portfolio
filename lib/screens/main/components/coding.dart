import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.84,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "React Typescript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.77,
          label: "C#",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "C++",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.52,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.41,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.22,
          label: "React-native",
        ),
      ],
    );
  }
}
