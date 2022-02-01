import 'package:flutter/material.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProject extends StatelessWidget {
  const ShimmerProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: darkColor,
      highlightColor: secondaryColor,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        color: secondaryColor,
      ),
    );
  }
}
