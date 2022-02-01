import 'package:flutter/cupertino.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAsset extends StatelessWidget {
  const ShimmerAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: darkColor,
      highlightColor: secondaryColor,
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
