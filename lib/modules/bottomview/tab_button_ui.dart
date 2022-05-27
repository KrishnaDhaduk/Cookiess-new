import 'package:flutter/material.dart';

import '../../constants/themes.dart';

class TabButtonUI extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final bool isSelected;

  const TabButtonUI({
    Key? key,
    this.onTap,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _color =
        isSelected ? AppTheme.primaryColor : AppTheme.secondaryTextColor;
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: _color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
