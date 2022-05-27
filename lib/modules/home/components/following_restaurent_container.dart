import 'package:flutter/material.dart';
import '../../../constants/themes.dart';
import '../../../routes/route_names.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

// ignore: must_be_immutable
class FollowingContainer extends StatefulWidget {
  final String receipeName;
  final String? serve;
  final String? time;
  final String? imagepath;
  bool isselected;

  FollowingContainer({
    required this.receipeName,
    this.serve,
    this.time,
    this.imagepath,
    this.isselected = false,
  });

  @override
  _FollowingContainerState createState() => _FollowingContainerState();
}

class _FollowingContainerState extends State<FollowingContainer> {
  VoidCallback? onsav;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, top: 10, right: 16, bottom: 16),
      child: GestureDetector(
        onTap: () {
          NavigationServices(context).gotoRecipeDetailsScreen();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CommonCard(
                  radius: 24,
                  child: ClipRRect(
                    child: Image.asset(widget.imagepath!,
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 16),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.8),
                            Colors.grey.withOpacity(0.8),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.7]),
                    ),
                    child: Center(
                      child: Text(
                        'Pasta',
                        style: TextStyles(context)
                            .getRegularStyle()
                            .copyWith(color: AppTheme.whiteTextColor),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 8,
                  left: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8, bottom: 8),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 4),
                              child: Text(
                                widget.receipeName,
                                style: TextStyles(context)
                                    .getTitle2Style()
                                    .copyWith(
                                        color: AppTheme.whiteTextColor,
                                        fontSize: 24),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 8, bottom: 4.0, top: 4),
                              child: Row(
                                children: [
                                  Text(
                                    widget.time! + '  |  ',
                                    style: TextStyles(context)
                                        .getSubTitleStyle()
                                        .copyWith(
                                            color: AppTheme.whiteTextColor),
                                  ),
                                  Text(
                                    ' ' + widget.serve!,
                                    style: TextStyles(context)
                                        .getSubTitleStyle()
                                        .copyWith(
                                          color: AppTheme.whiteTextColor,
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.grey.withOpacity(0.7),
                                  Colors.grey.withOpacity(0.7),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0, 0.7]),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.isselected = !widget.isselected;
                                });
                              },
                              child: Icon(Icons.bookmark_outline,
                                  color: widget.isselected
                                      ? AppTheme.primaryColor
                                      : AppTheme.whiteColor,
                                  size: 23),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
