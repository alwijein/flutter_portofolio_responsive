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
          percentage: 0.7,
        ),
        AnimatedLinearProgresIndicator(
          title: 'Java',
          percentage: 0.6,
        ),
        AnimatedLinearProgresIndicator(
          title: 'C++',
          percentage: 0.6,
        ),
        AnimatedLinearProgresIndicator(
          title: 'HTML',
          percentage: 0.6,
        ),
        AnimatedLinearProgresIndicator(
          title: 'CSS',
          percentage: 0.6,
        ),
      ],
    );
  }
}
