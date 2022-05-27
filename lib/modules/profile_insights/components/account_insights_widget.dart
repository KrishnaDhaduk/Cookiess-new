import 'package:flutter/material.dart';

import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';

class AccountsInsightsWidget extends StatelessWidget {
  const AccountsInsightsWidget({
    Key? key,
    required this.type,
    required this.value1,
    required this.value2,
  }) : super(key: key);
  final String type, value1, value2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            textAlign: TextAlign.left,
            style: TextStyles(context).getRegularStyle(),
          ),
          Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value1,
                textAlign: TextAlign.left,
                style: TextStyles(context).getRegularStyle(),
              ),
              Text(
                value2,
                textAlign: TextAlign.left,
                style: TextStyles(context)
                    .getRegularStyle()
                    .copyWith(color: AppTheme.primaryColor),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: AppTheme.lightGrayTextColor,
            ),
          )
        ],
      ),
    );
  }
}
