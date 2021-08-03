import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/main_screen_body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreenBody(),
    );
  }
}
