class EducationModel {
  String title, subTitle, year, imgPath;

  EducationModel({
    required this.title,
    required this.subTitle,
    required this.year,
    required this.imgPath,
  });
}

final List<EducationModel> educationModel = [
  EducationModel(
    title: 'Junior High School',
    subTitle: 'Pondok Pesantren M.D.I.A Bontoala',
    year: '2012 - 2015',
    imgPath: 'assets/images/logo_mdia.png',
  ),
  EducationModel(
    title: 'Senior High School',
    subTitle: 'Pondok Pesantren M.D.I.A Bontoala',
    year: '2015 - 2018',
    imgPath: 'assets/images/logo_mdia.png',
  ),
  EducationModel(
    title: 'Collage Student',
    subTitle: 'Universitas Muslim Indonesia',
    year: '2018 - ' + DateTime.now().year.toString(),
    imgPath: 'assets/images/logo_umi.png',
  ),
];
