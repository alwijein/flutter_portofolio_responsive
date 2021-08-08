class AssetModel {
  String title, path, categories;

  AssetModel(
      {required this.title, required this.path, required this.categories});
}

List<AssetModel> myAllAsset = [
  AssetModel(
    title: '3D Live Room',
    path: 'assets/images/Liveroom.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: '3D Koper Illustration',
    path: 'assets/images/Koper001.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: '3D Pertamina Future',
    path: 'assets/images/pertamina.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: '3D Live Potion',
    path: 'assets/images/potion2.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: '3D Illustration',
    path: 'assets/images/ilustrations-003.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: '3D Dark Room',
    path: 'assets/images/lol.png',
    categories: '3D Animation',
  ),
  AssetModel(
    title: 'UI Pinisi Parking Spot',
    path: 'assets/images/mockup.png',
    categories: 'UI/UX',
  ),
  AssetModel(
    title: 'UI - Mobile Vocab Daily',
    path: 'assets/images/vocab_daily_mockup.png',
    categories: 'Mobile App',
  ),
];
