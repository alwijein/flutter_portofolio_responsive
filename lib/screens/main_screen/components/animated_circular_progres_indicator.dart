import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class AnimatedCircularProgresIndicator extends StatelessWidget {
  const AnimatedCircularProgresIndicator({
    Key? key,
    required this.percentage,
    required this.title,
  }) : super(key: key);

  final double percentage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (_, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
