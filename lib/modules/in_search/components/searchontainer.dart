import 'package:flutter/material.dart';
import '../../../utils/text_style.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
    required this.name,
    required this.recipe,
    required this.image,
    required this.color,
  }) : super(key: key);
  final String name, recipe, image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 50,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text(
            name,
            style: TextStyles(context).getRegularStyle(),
          ),
        ),
        Text(
          recipe,
          style:
              TextStyles(context).getDescriptionStyle().copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
