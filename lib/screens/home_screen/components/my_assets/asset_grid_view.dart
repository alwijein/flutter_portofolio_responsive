part of 'my_assets.dart';

class AssetGridView extends StatelessWidget {
  AssetGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1,
    required this.selectedIndex,
    required this.filterAssetModel,
  }) : super(key: key);

  final int crossAxisCount, childAspectRatio, selectedIndex;
  final List<AssetModel> filterAssetModel;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      physics: NeverScrollableScrollPhysics(),
      staggeredTileBuilder: (index) => StaggeredTile.fit(childAspectRatio),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: defaultPadding,
      mainAxisSpacing: defaultPadding,
      itemCount:
          selectedIndex == 0 ? myAllAsset.length : filterAssetModel.length,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return selectedIndex == 0
            ? AssetCard(
                assetModel: myAllAsset[index],
              )
            : BlocBuilder<PageBloc, PageState>(
                builder: (context, pageState) {
                  if (pageState is OnAllPage) {
                    return AssetCard(
                      assetModel: filterAssetModel[index],
                    );
                  } else if (pageState is OnUiUxPage) {
                    return AssetCard(
                      assetModel: filterAssetModel[index],
                    );
                  } else if (pageState is On3DAnimationPage) {
                    return AssetCard(
                      assetModel: filterAssetModel[index],
                    );
                  } else {
                    return AssetCard(
                      assetModel: filterAssetModel[index],
                    );
                  }
                },
              );
      },
    );
  }
}
