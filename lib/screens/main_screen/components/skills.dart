import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/animated_circular_progres_indicator.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class Skills extends StatelessWidget {
  const Skills({
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
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgresIndicator(
                percentage: 0.8,
                level: 'Advance Beginner',
                title: 'Flutter',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgresIndicator(
                percentage: 0.5,
                level: 'Novice',
                title: 'Laravel',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgresIndicator(
                percentage: 0.7,
                level: 'Advance Beginner',
                title: 'Blender',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
