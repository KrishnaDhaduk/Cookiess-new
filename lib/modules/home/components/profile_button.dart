import 'package:flutter/material.dart';

import '../../../constants/local_images_file.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      radius: 6,
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          boxShadow: [boxshadow],
          color: Colors.teal[200],
        ),
        child: Image.asset(
          LocalImagesFile.mayo_salad,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
