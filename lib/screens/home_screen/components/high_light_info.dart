import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/home_screen/components/high_light.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            value: 67,
            label: '+',
            title: 'Subsciber',
          ),
          HighLight(
            value: 24,
            label: '+',
            title: 'Git Repository',
          ),
          HighLight(
            value: 6,
            label: '+',
            title: 'Project Real',
          ),
        ],
      ),
    );
  }
}
