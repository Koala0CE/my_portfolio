import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
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
