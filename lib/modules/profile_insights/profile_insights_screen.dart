import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_card.dart';
import '../../widgets/custom_appbar.dart';
import 'components/account_insights_widget.dart';
import 'components/insights_screen_container.dart';

class ProfileInsightsScreen extends StatefulWidget {
  @override
  _ProfileInsightsScreenState createState() => _ProfileInsightsScreenState();
}

class _ProfileInsightsScreenState extends State<ProfileInsightsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Column(
            children: [
              CustomAppBarView(
                leftWidget: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: AppTheme.primaryTextColor,
                  ),
                ),
                centerWidget: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4.5,
                    ),
                    Text(
                      'Insights',
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonCard(
                        radius: 12,
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "  Last 7 Days",
                                textAlign: TextAlign.left,
                                style: TextStyles(context).getRegularStyle(),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppTheme.lightGrayTextColor,
                                  ))
                            ],
                          ),
                        )),
                    Text(
                      "23 Jan - 29 Jan 2021",
                      textAlign: TextAlign.left,
                      style: TextStyles(context).getRegularStyle(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 12, bottom: 8),
                child: Row(
                  children: [
                    Text(
                      "Account Insights",
                      textAlign: TextAlign.left,
                      style: TextStyles(context)
                          .getTitle2Style()
                          .copyWith(fontSize: 22),
                    ),
                    Expanded(
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              AccountsInsightsWidget(
                  type: "Visitor", value1: '109', value2: '+ 200%'),
              AccountsInsightsWidget(
                  type: "Interaction", value1: '109', value2: '+ 200%'),
              AccountsInsightsWidget(
                  type: "Total Followers", value1: '5.8K', value2: '+ 98%'),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 8, top: 10),
                child: Row(
                  children: [
                    Text(
                      "My Popular Recipes  ",
                      style: TextStyles(context)
                          .getTitle2Style()
                          .copyWith(fontSize: 22),
                    ),
                    CircleAvatar(
                        backgroundColor: AppTheme.primaryColor,
                        radius: 16,
                        child: Icon(
                          Icons.workspace_premium,
                          color: AppTheme.whiteColor,
                          size: 20,
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16),
                  child: Row(
                    children: [
                      InsightsScreenContainer(
                          isPremium: true,
                          image: LocalImagesFile.curry_salmon_soup,
                          recipe: "Beef Ramen",
                          views: "520K views"),
                      InsightsScreenContainer(
                          image: LocalImagesFile.curry_salmon_soup,
                          recipe: "Currey Salmon...",
                          views: "245K views"),
                      InsightsScreenContainer(
                          image: LocalImagesFile.curry_salmon_soup,
                          recipe: "Cereal with sa...",
                          views: "200K views"),
                      InsightsScreenContainer(
                          image: LocalImagesFile.curry_salmon_soup,
                          recipe: "Cereal with sa...",
                          views: "200K views"),
                      InsightsScreenContainer(
                          image: LocalImagesFile.curry_salmon_soup,
                          recipe: "Cereal with sa...",
                          views: "200K views"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
