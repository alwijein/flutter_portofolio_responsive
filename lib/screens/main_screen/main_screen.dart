import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/side_menu.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // rumus = expanded (2 + 7 = 9) -> (2 / 9 = 0.2) -> 0.22 is 22%
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            SizedBox(width: defaultPadding),
            // rumus = expanded (2 + 7 = 10) -> (7 / 9 = 0.7) -> 0.77 is 0.77%
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...children
                    // out footer
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
