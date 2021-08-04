import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class FlutterCoderText extends StatelessWidget {
  const FlutterCoderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: '>',
          )
        ],
      ),
    );
  }
}
