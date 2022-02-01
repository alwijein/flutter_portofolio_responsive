part of 'my_assets.dart';

class AssetGridView extends StatelessWidget {
  AssetGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1,
    required this.selectedIndex,
    this.filterAssetModel = 'All',
  }) : super(key: key);

  final int crossAxisCount, childAspectRatio, selectedIndex;
  final String filterAssetModel;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AssetModel>>(
        future: DatabaseServices.assets(filterAssetModel),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              staggeredTileBuilder: (index) =>
                  StaggeredTile.fit(childAspectRatio),
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
              itemCount: snapshot.data?.length,
              shrinkWrap: true,
              itemBuilder: (_, index) {
                return AssetCard(
                  assetModel: snapshot.data![index],
                );
              },
            );
          } else {
            return ShimmerAsset();
          }
        });
  }
}
