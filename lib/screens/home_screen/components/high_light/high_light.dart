import 'package:flutter/material.dart';
import 'package:flutter_portofolio/config/config.dart';
import 'package:flutter_portofolio/shared/shared.dart';

part 'high_light_info.dart';
part 'animated_counter.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.title,
    required this.value,
    required this.label,
  }) : super(key: key);

  final String title, label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedCounter(
          value: value,
          text: label,
        ),
        SizedBox(width: defaultPadding / 2),
        Text(title, style: Theme.of(context).textTheme.subtitle2)
      ],
    );
  }
}
