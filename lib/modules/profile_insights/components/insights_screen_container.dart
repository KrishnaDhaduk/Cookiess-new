import 'package:flutter/material.dart';

import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

class InsightsScreenContainer extends StatelessWidget {
  const InsightsScreenContainer({
    Key? key,
    required this.image,
    required this.recipe,
    required this.views,
    this.isPremium = false,
  }) : super(key: key);
  final String image, recipe, views;
  final bool isPremium;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        children: [
          Column(
            children: [
              CommonCard(
                radius: 16,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Image(image: AssetImage(image)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4),
                child: Text(
                  recipe,
                  style: TextStyles(context)
                      .getRegularStyle()
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                views,
                style: TextStyles(context)
                    .getRegularStyle()
                    .copyWith(color: AppTheme.lightGrayTextColor),
              ),
            ],
          ),
          isPremium
              ? Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppTheme.infoColor,
                    child: Icon(
                      Icons.workspace_premium,
                      color: AppTheme.whiteColor,
                      size: 16,
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}
