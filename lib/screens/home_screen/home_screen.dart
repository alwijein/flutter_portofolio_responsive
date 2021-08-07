import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/home_screen/components/high_light/high_light.dart';
import 'package:flutter_portofolio/screens/home_screen/components/home_banner/home_banner.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_assets/my_assets.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_projects/my_projects.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_recommedation/my_recomendations.dart';
import 'package:flutter_portofolio/screens/main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        MyAssets(),
        MyRecomendations(),
      ],
    );
  }
}
