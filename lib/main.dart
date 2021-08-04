import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/home_screen/home_screen.dart';
import 'package:flutter_portofolio/screens/main_screen/main_screen.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alwi Jein Portofolio',
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      home: HomeScreen(),
    );
  }
}
