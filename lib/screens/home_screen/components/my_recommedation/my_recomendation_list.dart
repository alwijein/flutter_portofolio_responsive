part of 'my_recomendations.dart';

class MyRecomendationList extends StatelessWidget {
  const MyRecomendationList({
    Key? key,
    required this.educationModel,
  }) : super(key: key);

  final EducationModel educationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                educationModel.title,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                educationModel.subTitle,
              ),
              SizedBox(height: defaultPadding),
              Text(
                educationModel.year,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ],
          ),
          Image.asset(
            educationModel.imgPath,
            height: 80,
          ),
        ],
      ),
    );
  }
}
