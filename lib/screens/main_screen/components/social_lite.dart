import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:flutter_portofolio/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLite extends StatelessWidget {
  const SocialLite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0xFF24242E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              launchURL('https://www.instagram.com/alwi_jein');
            },
            icon: SvgPicture.asset(
              'assets/icons/instagram.svg',
              color: Color(0xFF8c8c8e),
            ),
          ),
          IconButton(
            onPressed: () {
              launchURL('https://github.com/alwijein');
            },
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {
              launchURL('https://www.facebook.com/Ninja.Expansin');
            },
            icon: SvgPicture.asset(
              'assets/icons/facebook.svg',
              color: Color(0xFF8c8c8e),
            ),
          ),
          IconButton(
            onPressed: () {
              launchURL('https://dribbble.com/alwijein');
            },
            icon: SvgPicture.asset(
              'assets/icons/dribble.svg',
              color: Color(0xFF8c8c8e),
            ),
          ),
          IconButton(
            onPressed: () {
              launchURL('https://www.linkedin.com/in/alwi-jein-465b7a176');
            },
            icon: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              color: Color(0xFF8c8c8e),
            ),
          ),
        ],
      ),
    );
  }
}
