import 'package:flutter/material.dart';

import '../../../constants/themes.dart';
import '../../../routes/route_names.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

class ReceipeWidget extends StatelessWidget {
  const ReceipeWidget({
    Key? key,
    required this.personName,
    required this.recipeName,
    required this.time,
    required this.serve,
    required this.image1,
    required this.personImage,
  }) : super(key: key);
  final String personName, recipeName, time, serve, image1, personImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            NavigationServices(context).gotoRecipeDetailsScreen();
          },
          child: CommonCard(
            radius: 16,
            child: Container(
              height: 120,
              width: 120,
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
          padding: const EdgeInsets.only(left: 16.0),
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
                    CircleAvatar(
                      backgroundColor: Colors.pink[50]!,
                      radius: 18,
                      child: Image(
                        image: AssetImage(personImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '    ' + personName,
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
      ],
    );
  }
}
