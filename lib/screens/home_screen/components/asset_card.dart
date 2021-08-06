import 'package:flutter/material.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/models/assets_model.dart';
import 'package:flutter_portofolio/shared/shared.dart';

class AssetCard extends StatelessWidget {
  const AssetCard({
    Key? key,
    required this.assetModel,
  }) : super(key: key);

  final AssetModel assetModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset(
              assetModel.path,
            ),
          ),
        ],
      ),
    );
  }
}
