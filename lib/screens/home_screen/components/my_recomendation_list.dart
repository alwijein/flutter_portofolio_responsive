import 'package:flutter/material.dart';
import 'package:flutter_portofolio/models/Recommendation.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MyRecomendationList extends StatelessWidget {
  const MyRecomendationList({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            recommendation.source,
          ),
          SizedBox(height: defaultPadding),
          Text(
            recommendation.text,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
