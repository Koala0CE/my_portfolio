import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 10,
              text: "+",
            ),
            label: "University Projects",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 1,
              text: "+",
            ),
            label: "Github Projects",
          ),
        ],
      ),
    );
  }
}
