import 'package:flutter/material.dart';
import 'package:flutter_portofolio/screens/main_screen/components/animated_circular_progres_indicator.dart';
import 'package:flutter_portofolio/screens/main_screen/components/area_info_text.dart';
import 'package:flutter_portofolio/screens/main_screen/components/coding.dart';
import 'package:flutter_portofolio/screens/main_screen/components/knowladge.dart';
import 'package:flutter_portofolio/screens/main_screen/components/knowladge_text.dart';
import 'package:flutter_portofolio/screens/main_screen/components/my_info.dart';
import 'package:flutter_portofolio/screens/main_screen/components/skills.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:flutter_portofolio/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: 'Country',
                      subTitle: 'Indonesia',
                    ),
                    AreaInfoText(
                      title: 'City',
                      subTitle: 'Makassar',
                    ),
                    AreaInfoText(
                      title: 'Age',
                      subTitle: '22',
                    ),
                    Skills(),
                    Coding(),
                    Knowladge(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'Download CV',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset('assets/icons/download.svg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                          ),
                          IconButton(
                            onPressed: () {
                              launchURL('https://github.com/alwijein');
                            },
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                          ),
                        ],
                      ),
                    ),
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
