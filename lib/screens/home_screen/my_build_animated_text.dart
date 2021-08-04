import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/home_screen/flutter_coder_text.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCoderText(),
          SizedBox(width: defaultPadding / 2),
          Text('I build '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Pinisi Parking Spot Mobile app',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Vocab Daily for Education',
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'DokterinAja Mobile app Doctor Consultation',
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(width: defaultPadding / 2),
          FlutterCoderText(),
        ],
      ),
    );
  }
}
