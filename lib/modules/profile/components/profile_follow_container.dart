import 'package:flutter/material.dart';

import '../../../utils/text_style.dart';

class ProfileFollowContainer extends StatelessWidget {
  const ProfileFollowContainer({
    Key? key,
    required this.detail,
    required this.count,
  }) : super(key: key);
  final String detail, count;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyles(context)
              .getRegularStyle()
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 4),
          child: Text(
            detail,
            style: TextStyles(context).getDescriptionStyle().copyWith(
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
      ],
    );
  }
}
