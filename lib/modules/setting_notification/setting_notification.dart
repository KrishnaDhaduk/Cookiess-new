
import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';

class SettingNotificationScreen extends StatefulWidget {
  @override
  _SettingNotificationScreenState createState() =>
      _SettingNotificationScreenState();
}

class _SettingNotificationScreenState extends State<SettingNotificationScreen> {
  bool isRecomendation = false;
  bool isComments = true;
  bool isRecipeActivity = true;
  bool isTag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Column(
            children: [
              CustomAppBarView(
                centerWidget: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: AppTheme.primaryTextColor,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        "Notifications",
                        style: TextStyles(context).getTitle2Style().copyWith(
                            color: AppTheme.primaryTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppTheme.lightGrayTextColor.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16.0),
                        child: Text(
                          'Push notifiation',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(color: AppTheme.lightGrayTextColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'Recomendation',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(color: AppTheme.primaryTextColor),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Including trending recipes, event recommendations curated by our team',
                            style: TextStyles(context).getDescriptionStyle(),
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isRecomendation = !isRecomendation;
                            });
                          },
                          icon: Icon(
                            isRecomendation
                                ? Icons.toggle_on
                                : Icons.toggle_off,
                            size: 50,
                            color: isRecomendation
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                child: ListTile(
                  title: Text(
                    'Comments',
                    style: TextStyles(context)
                        .getSubTitleStyle()
                        .copyWith(color: AppTheme.primaryTextColor),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Comment on your recipes, including tags in comments, as well as replies to your comments on other people's recipes",
                      style: TextStyles(context).getDescriptionStyle(),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isComments = !isComments;
                      });
                    },
                    icon: Icon(
                      isComments ? Icons.toggle_on : Icons.toggle_off,
                      size: 50,
                      color: isComments
                          ? AppTheme.primaryColor
                          : AppTheme.lightGrayTextColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                child: ListTile(
                  title: Text(
                    'Recipe activity',
                    style: TextStyles(context)
                        .getSubTitleStyle()
                        .copyWith(color: AppTheme.primaryTextColor),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Activities on your recipe, such as likes, comments',
                      style: TextStyles(context).getDescriptionStyle(),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isRecipeActivity = !isRecipeActivity;
                      });
                    },
                    icon: Icon(
                      isRecipeActivity ? Icons.toggle_on : Icons.toggle_off,
                      size: 50,
                      color: isRecipeActivity
                          ? AppTheme.primaryColor
                          : AppTheme.lightGrayTextColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                child: ListTile(
                  title: Text(
                    'Tag',
                    style: TextStyles(context)
                        .getSubTitleStyle()
                        .copyWith(color: AppTheme.primaryTextColor),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'When someone mentions you, either in comments, replies to comments, or in a recipe post',
                      style: TextStyles(context).getDescriptionStyle(),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isTag = !isTag;
                      });
                    },
                    icon: Icon(
                      isTag ? Icons.toggle_on : Icons.toggle_off,
                      size: 50,
                      color: isTag
                          ? AppTheme.primaryColor
                          : AppTheme.lightGrayTextColor,
                    ),
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
