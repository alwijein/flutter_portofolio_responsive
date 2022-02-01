import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_portofolio/models/Project.dart';
import 'package:flutter_portofolio/models/assets_model.dart';

class DatabaseServices {
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  static CollectionReference collectionReferenceProjects =
      firebaseFirestore.collection('projects');
  static CollectionReference collectionReferencesAssets =
      firebaseFirestore.collection('assets');

  static Future<List<Project>> projects() async {
    List<Project> projects = [];

    QuerySnapshot maps = await collectionReferenceProjects.get();
    for (var e in maps.docs) {
      projects.add(
        Project(
          title: (e.data() as dynamic)['title'],
          description: (e.data() as dynamic)['desc'],
          directLink: (e.data() as dynamic)['directLink'],
        ),
      );
    }

    return projects;
  }

  static Future<List<AssetModel>> assets(String categories) async {
    List<AssetModel> assets = [];
    QuerySnapshot maps;

    if (categories == 'All') {
      maps = await collectionReferencesAssets.get();
    } else {
      maps = await collectionReferencesAssets
          .where('categories', isEqualTo: categories)
          .get();
    }

    for (var e in maps.docs) {
      assets.add(AssetModel(
        title: (e.data() as dynamic)['title'],
        path: (e.data() as dynamic)['imgUrl'],
        categories: (e.data() as dynamic)['categories'],
      ));
    }
    print('sdsdsd' + assets.toString());
    return assets;
  }
}
