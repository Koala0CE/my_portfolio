import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';
import '../../../models/recommendation.dart';
import '../home_screen.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hobbies: Painting and Drawing & Video Games",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
