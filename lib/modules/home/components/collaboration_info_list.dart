import 'package:flutter/material.dart';
import '../../../constants/local_images_file.dart';
import 'collaboration_container.dart';

class CollaborationInfoList {
  final String imagepath, imagepath2, state, foodname, followers;
  final bool isCalander;
  final VoidCallback? onTap;

  CollaborationInfoList(
      {required this.imagepath,
      required this.foodname,
      this.onTap,
      required this.state,
      required this.followers,
      required this.imagepath2,
      this.isCalander = false});

  static List<CollaborationContainer> getCollaborationInfoListlist = [
    CollaborationContainer(
      state: 'ongoing',
      followers: '+5 others',
      imagepath2: LocalImagesFile.vegetable_salad,
      foodname: "Vagetable Salad",
      imagepath: LocalImagesFile.collaboration1,
      isCalander: false,
    ),
    CollaborationContainer(
      state: '',
      followers: '',
      imagepath2: LocalImagesFile.noodle_with_tofu,
      foodname: "Noodle with Tofu",
      imagepath: LocalImagesFile.collaboration2,
      isCalander: false,
    ),
    CollaborationContainer(
      state: 'ongoing',
      followers: '+5 others',
      imagepath2: LocalImagesFile.tempura_udon,
      foodname: "Tempura Udon",
      imagepath: LocalImagesFile.collaboration1,
      isCalander: true,
    ),
    CollaborationContainer(
      state: '',
      followers: '',
      imagepath2: LocalImagesFile.noodle_with_egg,
      foodname: "Noodle with Tofu",
      imagepath: LocalImagesFile.collaboration2,
      isCalander: true,
    ),
  ];
}
