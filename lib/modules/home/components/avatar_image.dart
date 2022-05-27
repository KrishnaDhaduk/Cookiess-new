import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final Color? avatarcolor;
  final String? imagepath;
  const AvatarImage({this.avatarcolor, this.imagepath});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CircleAvatar(
        backgroundColor: avatarcolor,
        radius: 18,
        child: Image.asset(
          imagepath!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
