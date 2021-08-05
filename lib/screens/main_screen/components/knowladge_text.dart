import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KnowladgeText extends StatelessWidget {
  const KnowladgeText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            color: primaryColor,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(title),
        ],
      ),
    );
  }
}
