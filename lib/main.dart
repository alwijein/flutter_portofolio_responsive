import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portofolio/config/config.dart';
import 'package:flutter_portofolio/screens/home_screen/home_screen.dart';
import 'package:flutter_portofolio/shared/shared.dart';

import 'bloc/page_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageBloc(),
      child: MaterialApp(
        title: 'Alwi Jein Portofolio',
        debugShowCheckedModeBanner: false,
        theme: themeData(context),
        home: AnimatedSplashScreen(
            backgroundColor: bgColor,
            centered: true,
            splash: SplashScreen(),
            nextScreen: HomeScreen()),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: TweenAnimationBuilder(
        duration: defaultDuration * 3,
        tween: Tween<double>(begin: 0, end: 1),
        builder: (_, double value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alwi Jaya',
              style: ResponsiveConfig.isMobile(context)
                  ? Theme.of(context).textTheme.subtitle2
                  : Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              minHeight: ResponsiveConfig.isMobile(context) ? 4 : 5,
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
            SizedBox(height: defaultPadding / 2),
            Text(
              (value * 100).toInt().toString() + '%',
              style: ResponsiveConfig.isMobile(context)
                  ? Theme.of(context).textTheme.subtitle2
                  : Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
