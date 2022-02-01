import 'package:cached_network_image/cached_network_image.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portofolio/bloc/page_bloc.dart';
import 'package:flutter_portofolio/config/config.dart';
import 'package:flutter_portofolio/models/assets_model.dart';
import 'package:flutter_portofolio/screens/components/shimmer_asset.dart';
import 'package:flutter_portofolio/services/database_services.dart';
import 'package:flutter_portofolio/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

part 'asset_card.dart';
part 'asset_grid_view.dart';

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

  String filterCategories = 'All';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Portofolio', style: Theme.of(context).textTheme.headline6),
          SizedBox(height: defaultPadding / 2),
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
          SizedBox(height: defaultPadding),
          ResponsiveConfig(
            mobile: AssetGridView(
              filterAssetModel: filterCategories,
              crossAxisCount: 1,
              // childAspectRatio: 2,
              selectedIndex: selectedIndex,
            ),
            tablet: AssetGridView(
              filterAssetModel: filterCategories,
              selectedIndex: selectedIndex,
            ),
            mobileLarge: AssetGridView(
              filterAssetModel: filterCategories,
              crossAxisCount: 2,
              selectedIndex: selectedIndex,
            ),
            desktop: AssetGridView(
              filterAssetModel: filterCategories,
              selectedIndex: selectedIndex,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          filterCategories = categories[index];
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 11),
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color:
                          selectedIndex == index ? primaryColor : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.white : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
