import 'package:flutter/material.dart';
import 'package:flutter_portofolio/models/Recommendation.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_recomendation_list.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MyRecomendations extends StatelessWidget {
  const MyRecomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recomendations'),
          SizedBox(height: defaultPadding / 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: defaultPadding),
                  child: MyRecomendationList(
                      recommendation: demo_recommendations[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
