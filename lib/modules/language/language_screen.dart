
import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<LanguageScreen> {
  bool isEnglish = true;
  bool isIndoneshian = false;

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
                        "Language",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'English',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isEnglish
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isEnglish = !isEnglish;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isEnglish
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'Indoneshia',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isIndoneshian
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isIndoneshian = !isIndoneshian;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isIndoneshian
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'Chinnese',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isIndoneshian
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isIndoneshian = !isIndoneshian;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isIndoneshian
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'Germany',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isIndoneshian
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isIndoneshian = !isIndoneshian;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isIndoneshian
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        title: Text(
                          'Dutch',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isIndoneshian
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isIndoneshian = !isIndoneshian;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isIndoneshian
                                ? AppTheme.primaryColor
                                : AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
