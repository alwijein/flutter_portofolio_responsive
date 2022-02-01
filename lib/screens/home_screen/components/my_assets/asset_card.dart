part of 'my_assets.dart';

class AssetCard extends StatelessWidget {
  const AssetCard({
    Key? key,
    required this.assetModel,
  }) : super(key: key);

  final AssetModel assetModel;

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(microseconds: 500),
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              assetModel.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: defaultPadding),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: assetModel.path,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: LinearProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
