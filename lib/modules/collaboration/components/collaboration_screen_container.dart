import 'package:flutter/material.dart';
import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';
import '../../home/components/rating_container.dart';

class CollaborationScreenContainer extends StatelessWidget {
  final String imagepath, imagepath2, state, foodname, followers;
  final bool isCalander;
  final VoidCallback? onTap;
  const CollaborationScreenContainer(
      {required this.imagepath,
      required this.foodname,
      this.onTap,
      required this.state,
      required this.followers,
      required this.imagepath2,
      this.isCalander = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: InkWell(
        onTap: onTap,
        child: CommonCard(
          radius: 24,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [boxshadow],
                  color: AppTheme.whiteTextColor,
                  gradient: LinearGradient(
                      colors: [
                        Colors.grey.withOpacity(0.9),
                        Colors.grey.withOpacity(0.0),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.7]),
                ),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  imagepath,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: isCalander
                                ? Row(
                                    children: [
                                      Icon(Icons.calendar_month_outlined,
                                          color: AppTheme.lightGrayTextColor),
                                      Text('  3 Februari 2022',
                                          style: TextStyles(context)
                                              .getRegularStyle()
                                              .copyWith(
                                                fontSize: 18,
                                                color:
                                                    AppTheme.lightGrayTextColor,
                                              )),
                                    ],
                                  )
                                : Row(
                                    children: [
                                      Icon(
                                        Icons.podcasts_outlined,
                                        color: AppTheme.dangerColor,
                                      ),
                                      Text('  Ongoing',
                                          style: TextStyles(context)
                                              .getRegularStyle()
                                              .copyWith(
                                                fontSize: 18,
                                                color: AppTheme.dangerColor,
                                              )),
                                    ],
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(foodname,
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.backColor,
                                    )),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              isCalander
                                  ? Row(
                                      children: [
                                        Icon(Icons.alarm_outlined,
                                            color: AppTheme.primaryColor),
                                        Text('  Remind me',
                                            style: TextStyles(context)
                                                .getRegularStyle()
                                                .copyWith(
                                                  fontSize: 18,
                                                  color: AppTheme.primaryColor,
                                                )),
                                      ],
                                    )
                                  : RatingContainer(),
                              isCalander
                                  ? Text('')
                                  : Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '  ' + followers,
                                        style: TextStyles(context)
                                            .getRegularStyle()
                                            .copyWith(
                                                color: AppTheme.primaryColor,
                                                fontSize: 18),
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      imagepath2,
                      fit: BoxFit.cover,
                      scale: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
