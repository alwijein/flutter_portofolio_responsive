import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final String? text;
  final int value;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: defaultDuration * 5,
      tween: IntTween(begin: 0, end: value),
      builder: (_, int value, child) {
        return Text(
          "$value$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: primaryColor),
        );
      },
    );
  }
}
