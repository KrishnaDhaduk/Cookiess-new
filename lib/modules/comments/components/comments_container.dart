import 'package:flutter/material.dart';
import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({
    Key? key,
    required this.name,
    required this.time,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String name, time, image, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CircleAvatar(
                  radius: 30,
                  child: Image(
                    image: AssetImage(image),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyles(context)
                        .getRegularStyle()
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    time,
                    style: TextStyles(context).getRegularStyle().copyWith(
                        color: AppTheme.lightGrayTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4, left: 72),
          child: Text(
            description,
            style: TextStyles(context).getRegularStyle().copyWith(
                color: AppTheme.lightGrayTextColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 72.0),
          child: Row(
            children: [
              Icon(
                Icons.chat_rounded,
                color: AppTheme.lightGrayTextColor,
              ),
              Text(
                "   Reply",
                style: TextStyles(context).getRegularStyle().copyWith(
                    color: AppTheme.lightGrayTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 8),
          child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width - 16,
            color: AppTheme.lightGrayTextColor,
          ),
        ),
      ],
    );
  }
}
