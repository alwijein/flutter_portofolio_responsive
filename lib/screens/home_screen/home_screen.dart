import 'package:flutter/material.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/models/Recommendation.dart';
import 'package:flutter_portofolio/screens/home_screen/components/high_light_info.dart';
import 'package:flutter_portofolio/screens/home_screen/components/home_banner.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_assets.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_projects.dart';
import 'package:flutter_portofolio/screens/home_screen/components/my_recomendations.dart';
import 'package:flutter_portofolio/screens/main_screen/main_screen.dart';
import 'package:flutter_portofolio/shared/shared.dart';

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
