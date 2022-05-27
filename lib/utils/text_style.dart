import 'package:flutter/material.dart';

import '../constants/themes.dart';

class TextStyles {
  final BuildContext context;

  TextStyles(this.context);
//
  TextStyle getSplashTitleStyle() {
    return Theme.of(context).textTheme.headline2!.copyWith(
        fontSize: 36,
        color: AppTheme.whiteTextColor,
        fontWeight: FontWeight.w600);
  }

  //
  TextStyle getTitleStyle() {
    return Theme.of(context).textTheme.headline3!.copyWith(
        fontSize: 30,
        color: AppTheme.primaryTextColor,
        fontWeight: FontWeight.w600);
  }

  //
  TextStyle getTitle2Style() {
    return Theme.of(context).textTheme.headline3!.copyWith(
        fontSize: 18,
        color: AppTheme.primaryTextColor,
        fontWeight: FontWeight.w600);
  }

//
  TextStyle getSubTitleStyle() {
    return Theme.of(context).textTheme.headline2!.copyWith(
        color: AppTheme.inputColor, fontSize: 18, fontWeight: FontWeight.w100);
  }

//
  TextStyle getDescriptionStyle() {
    return Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(color: AppTheme.secondaryTextColor, fontSize: 14);
  }

//
  TextStyle getRegularStyle() {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 16,
          color: AppTheme.primaryTextColor,
        );
  }

  TextStyle getSecondaryRegularStyle() {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 14,
        color: AppTheme.primaryTextColor,
        fontWeight: FontWeight.w400);
  }

  TextStyle getBoldStyle() {
    return Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: 14,
          color: AppTheme.primaryTextColor,
        );
  }
}

//boxshadows

BoxShadow boxshadow = BoxShadow(
    color: AppTheme.lightGrayTextColor.withOpacity(0.5), blurRadius: 0.3);

BoxShadow homeTabboxshadow = BoxShadow(
    color: AppTheme.lightGrayTextColor.withOpacity(0.6), blurRadius: 0.7);
BoxShadow buttonshadow =
    BoxShadow(color: AppTheme.primaryColor, blurRadius: 1, spreadRadius: 0.3);
