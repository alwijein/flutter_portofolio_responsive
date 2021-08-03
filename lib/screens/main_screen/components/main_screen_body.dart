import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/side_menu.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Row(
        children: [
          // rumus = expanded (2 + 7 = 9) -> (2 / 9 = 0.2) -> 0.22 is 22%
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          // rumus = expanded (2 + 7 = 10) -> (7 / 9 = 0.7) -> 0.77 is 0.77%
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
