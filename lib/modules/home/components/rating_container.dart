import 'package:flutter/material.dart';
import '../../../constants/local_images_file.dart';
import 'avatar_image.dart';

class RatingContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
          ),
          child: AvatarImage(
            imagepath: LocalImagesFile.person_mia,
            avatarcolor: Colors.amber[200],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: AvatarImage(
              imagepath: LocalImagesFile.person_gabrial,
              avatarcolor: Colors.pink[300]),
        ),
        AvatarImage(
            imagepath: LocalImagesFile.perosn_samantha,
            avatarcolor: Colors.lightBlue[200]),
      ],
    );
  }
}
