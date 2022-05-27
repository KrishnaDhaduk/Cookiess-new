import 'package:flutter/material.dart';

import '../../../constants/themes.dart';
import '../../../routes/route_names.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

class SavedContainer extends StatelessWidget {
  const SavedContainer({
    Key? key,
    required this.personName,
    required this.recipeName,
    required this.time,
    required this.serve,
    required this.image1,
    this.isSave = true,
  }) : super(key: key);
  final String personName, recipeName, time, serve, image1;
  final bool isSave;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              NavigationServices(context).gotoRecipeDetailsScreen();
            },
            child: CommonCard(
              radius: 16,
              child: Container(
                height: 105,
                width: 105,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  image1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 4),
                  child: Text(
                    recipeName,
                    style: TextStyles(context)
                        .getTitle2Style()
                        .copyWith(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 4.0, top: 4),
                  child: Row(
                    children: [
                      Text(
                        time + '  |  ',
                        style: TextStyles(context)
                            .getRegularStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      ),
                      Text(
                        serve + ' serve',
                        style: TextStyles(context)
                            .getRegularStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        '    by    ',
                        style: TextStyles(context).getRegularStyle(),
                      ),
                      Text(
                        personName,
                        style: TextStyles(context).getRegularStyle().copyWith(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark,
                  color: isSave
                      ? AppTheme.primaryColor
                      : AppTheme.lightGrayTextColor,
                  size: 28,
                )),
          )
        ],
      ),
    );
  }
}
