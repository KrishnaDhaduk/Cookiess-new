
import 'package:flutter/material.dart';

import '../../constants/themes.dart';
import '../../utils/text_style.dart';

class NotificationReviewContainer extends StatelessWidget {
  const NotificationReviewContainer({
    Key? key,
    required this.color,
    required this.photoBGColor,
    required this.icon,
    required this.image,
    required this.personName,
    required this.time,
    required this.line1,
    required this.line2,
    this.isOnline = false,
  }) : super(key: key);
  final Color color, photoBGColor;
  final IconData icon;
  final String image, personName, time, line1, line2;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: photoBGColor,
                radius: 30,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              CircleAvatar(
                backgroundColor:
                    isOnline ? AppTheme.primaryColor : Colors.transparent,
                radius: 8,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 12,
                  child: Icon(
                    icon,
                    size: 16,
                    color: AppTheme.whiteColor,
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    personName,
                    style: TextStyles(context).getDescriptionStyle().copyWith(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    line1,
                    style: TextStyles(context).getDescriptionStyle().copyWith(
                        color: AppTheme.primaryTextColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Text(
                line2,
                style: TextStyles(context).getDescriptionStyle().copyWith(
                    color: AppTheme.lightGrayTextColor,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Text(
            time,
            style: TextStyles(context).getDescriptionStyle().copyWith(
                color: AppTheme.lightGrayTextColor,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
