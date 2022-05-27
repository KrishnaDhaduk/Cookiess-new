import 'package:flutter/material.dart';

import '../constants/themes.dart';
import '../utils/text_style.dart';
import 'common_card.dart';

class CommonTextFieldView extends StatelessWidget {
  final String? hintText;
  final bool? isObscureText;
  final EdgeInsetsGeometry? padding;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final VoidCallback? onTap;

  const CommonTextFieldView({
    Key? key,
    this.hintText = '',
    this.isObscureText = false,
    this.padding = const EdgeInsets.only(),
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: CommonCard(
        radius: 12,
        child: Container(
          color: AppTheme.inputColor,
          child: TextField(
            maxLines: 1,
            onChanged: onChanged,
            onTap: onTap,
            controller: controller,
            style: TextStyles(context).getRegularStyle(),
            obscureText: isObscureText!,
            cursorColor: Theme.of(context).primaryColor,
            onEditingComplete: () {
              FocusScope.of(context).nextFocus();
            },
            decoration: new InputDecoration(
                border: InputBorder.none,
                errorText: null,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppTheme.primaryColor, width: 1.0),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                hintText: hintText,
                hintStyle: TextStyle(color: AppTheme.secondaryTextColor),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon),
            keyboardType: keyboardType,
          ),
        ),
      ),
    );
  }
}
