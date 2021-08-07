import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            AvatarGlow(
              glowColor: primaryColor,
              endRadius: 90.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
            Spacer(),
            Text(
              'Alwi Jaya',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Flutter Developer & Blender 3D Design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
