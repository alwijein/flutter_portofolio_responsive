import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/home_screen/flutter_coder_text.dart';
import 'package:flutter_portofolio/screens/home_screen/home_banner.dart';
import 'package:flutter_portofolio/screens/home_screen/my_build_animated_text.dart';
import 'package:flutter_portofolio/screens/main_screen/main_screen.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
      ],
    );
  }
}
