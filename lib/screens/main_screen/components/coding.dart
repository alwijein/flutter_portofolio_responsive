import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/animated_linear_progres_indicator.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text('Coding', style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgresIndicator(
          title: 'Dart',
          level: 'Advace Beginner',
          percentage: 0.7,
        ),
        AnimatedLinearProgresIndicator(
          title: 'Java',
          level: 'Advace Beginner',
          percentage: 0.6,
        ),
        AnimatedLinearProgresIndicator(
          title: 'C++',
          level: 'Novice',
          percentage: 0.8,
        ),
        AnimatedLinearProgresIndicator(
          title: 'HTML',
          level: 'Novice',
          percentage: 0.4,
        ),
        AnimatedLinearProgresIndicator(
          title: 'CSS',
          level: 'Novice',
          percentage: 0.4,
        ),
      ],
    );
  }
}
