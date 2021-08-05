import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class AnimatedLinearProgresIndicator extends StatelessWidget {
  const AnimatedLinearProgresIndicator({
    Key? key,
    required this.title,
    required this.level,
    required this.percentage,
  }) : super(key: key);
  final String title, level;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        duration: defaultDuration,
        tween: Tween<double>(begin: 0, end: percentage),
        builder: (_, double value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text((value * 100).toInt().toString() + '%'),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            Text(
              level,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
