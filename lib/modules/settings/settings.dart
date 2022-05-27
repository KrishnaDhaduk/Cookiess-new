import 'dart:io';
import 'package:flutter/material.dart';
import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                      "Settings",
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
                    height: 54,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppTheme.lightGrayTextColor.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16.0),
                      child: Text(
                        'Profile',
                        style: TextStyles(context)
                            .getSubTitleStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                    child: ListTile(
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CircleAvatar(
                            radius: 27,
                            child: Image(
                              image: AssetImage(LocalImagesFile.laura_harper),
                            ),
                          )),
                      title: Text('Laura Harper'),
                      subtitle: Text('@lauraharper'),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            NavigationServices(context).gotoAccountScreen();
                          });
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 54,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppTheme.lightGrayTextColor.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16.0),
                      child: Text(
                        'Settings',
                        style: TextStyles(context)
                            .getSubTitleStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {
                          setState(() {
                            // Navigator.pop(context);
                          });
                        },
                        icon: Icon(
                          Icons.notifications,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyles(context)
                            .getSubTitleStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          NavigationServices(context)
                              .gotoSettingNotificationScreen();
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {
                          setState(() {
                            // Navigator.pop(context);
                          });
                        },
                        icon: Icon(
                          Icons.language,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
                            style: TextStyles(context)
                                .getSubTitleStyle()
                                .copyWith(color: AppTheme.lightGrayTextColor),
                          ),
                          Text(
                            'English',
                            style: TextStyles(context)
                                .getSubTitleStyle()
                                .copyWith(color: AppTheme.lightGrayTextColor),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            NavigationServices(context).gotoLanguageScreen();
                          });
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.dark_mode,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Theme',
                            style: TextStyles(context)
                                .getSubTitleStyle()
                                .copyWith(color: AppTheme.lightGrayTextColor),
                          ),
                          Text(
                            'Light',
                            style: TextStyles(context)
                                .getSubTitleStyle()
                                .copyWith(color: AppTheme.lightGrayTextColor),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          NavigationServices(context).gotoThemeScreen();
                        },
                        icon: Row(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 28,
                              color: AppTheme.lightGrayTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {
                          setState(() {
                            // Navigator.pop(context);
                          });
                        },
                        icon: Icon(
                          Icons.help,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      title: Text(
                        'Help',
                        style: TextStyles(context)
                            .getSubTitleStyle()
                            .copyWith(color: AppTheme.lightGrayTextColor),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            // Navigator.pop(context);
                          });
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 2.0, bottom: 8, left: 4),
                    child: ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context),
                        );
                      },
                      leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.logout,
                          size: 28,
                          color: AppTheme.dangerColor,
                        ),
                      ),
                      title: Text(
                        'Log out',
                        style: TextStyles(context)
                            .getSubTitleStyle()
                            .copyWith(color: AppTheme.dangerColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text(
        'Log out',
      ),
      titleTextStyle: TextStyles(context).getSubTitleStyle().copyWith(
          color: AppTheme.primaryTextColor, fontWeight: FontWeight.bold),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Are you sure you want to Logout from app?",
            style: TextStyles(context)
                .getSubTitleStyle()
                .copyWith(color: AppTheme.primaryTextColor),
          ),
        ],
      ),
      actions: <Widget>[
        new TextButton(
          onPressed: () {
            setState(() {
              exit(0);
            });
          },
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'No',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
