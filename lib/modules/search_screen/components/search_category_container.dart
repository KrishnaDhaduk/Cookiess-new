import 'package:flutter/material.dart';

import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

class SearchCategoryContainer extends StatelessWidget {
  const SearchCategoryContainer({
    Key? key,
    required this.categoryName,
    required this.ImageName,
    required this.color1,
    required this.color2,
  }) : super(key: key);
  final String categoryName, ImageName;
  final Color color1, color2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CommonCard(
        radius: 28,
        child: Container(
          height: 140,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.0, 0.7]),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 48),
              child: Text(
                categoryName,
                style: TextStyles(context)
                    .getTitleStyle()
                    .copyWith(color: AppTheme.whiteColor),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                height: 140,
                width: 130,
                child: Image.asset(ImageName,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
