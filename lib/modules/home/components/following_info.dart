import 'package:flutter/material.dart';

import '../../../constants/local_images_file.dart';

class FollowingInfo {
  String restaurentname, serve, time;
  String imagepath;
  VoidCallback? onsav;
  bool isbookmark;

  FollowingInfo({
    required this.restaurentname,
    required this.serve,
    required this.time,
    required this.imagepath,
    this.onsav,
    this.isbookmark = false,
  });

  static List<FollowingInfo> getFollowingInfolist = [
    FollowingInfo(
      restaurentname: "Seafood Pasta",
      serve: '2 serve',
      imagepath: LocalImagesFile.seafood_pasta,
      time: '35 Min.',
    ),
    FollowingInfo(
      restaurentname: "Vegetable pasta",
      serve: '2 serve',
      imagepath: LocalImagesFile.vegetable_pasta,
      time: '35 Min.',
    ),
    FollowingInfo(
      restaurentname: "Sushi",
      serve: '2 serve',
      imagepath: LocalImagesFile.sushi,
      time: '35 Min.',
    ),
  ];
}
