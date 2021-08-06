import 'package:flutter/material.dart';
import 'package:flutter_portofolio/config/config.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/models/assets_model.dart';
import 'package:flutter_portofolio/screens/home_screen/components/asset_card.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyAssets extends StatefulWidget {
  MyAssets({
    Key? key,
  }) : super(key: key);

  @override
  _MyAssetsState createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  List<String> categories = ['All', 'UI/UX', '3D Animation', 'Mobile App'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Portofolio', style: Theme.of(context).textTheme.headline6),
          SizedBox(
            height: 25,
            width: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return buildCategory(index, context);
              },
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          ResponsiveConfig(
            mobile: AssetGridView(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
            tablet: AssetGridView(
              childAspectRatio: 1,
            ),
            mobileLarge: AssetGridView(
              crossAxisCount: 2,
            ),
            desktop: AssetGridView(),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: selectedIndex == index ? primaryColor : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Container(
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

class AssetGridView extends StatelessWidget {
  const AssetGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount, childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      staggeredTileBuilder: (index) => StaggeredTile.fit(childAspectRatio),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: defaultPadding,
      mainAxisSpacing: defaultPadding,
      itemCount: myAsset.length,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return AssetCard(
          assetModel: myAsset[index],
        );
      },
    );
  }
}
