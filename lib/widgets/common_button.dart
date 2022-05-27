
import 'package:flutter/material.dart';

import '../utils/text_style.dart';
import 'common_card.dart';
import 'tap_effect.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String? buttonText;
  final Widget? buttonTextWidget;
  final Color? textColor, backgroundColor;
  final bool? isClickable;
  final double? radius;
  const CommonButton({
    Key? key,
    this.onTap,
    this.buttonText,
    this.buttonTextWidget,
    this.textColor: Colors.white,
    this.backgroundColor,
    this.padding,
    this.isClickable = true,
    this.radius = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(),
      child: TapEffect(
        isClickable: isClickable!,
        onClick: onTap ?? () {},
        child: SizedBox(
          height: 50,
          child: CommonCard(
            radius: radius!,
            color: backgroundColor ?? Theme.of(context).primaryColor,
            child: Center(
              child: buttonTextWidget ??
                  Text(
                    buttonText ?? "",
                    style: TextStyles(context).getRegularStyle().copyWith(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
