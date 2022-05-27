
import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../logic/providers/theme_provider.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  bool isLight = true;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

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
                        "Theme",
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
                          'Light mode',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isLight
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            themeProvider.updateThemeMode(ThemeModeType.light);
                            setState(() {
                              isLight = !isLight;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isLight
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
                          'Dark mode',
                          style: TextStyles(context)
                              .getSubTitleStyle()
                              .copyWith(
                                  color: isDark
                                      ? AppTheme.primaryColor
                                      : AppTheme.lightGrayTextColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            themeProvider.updateThemeMode(ThemeModeType.dark);
                            setState(() {
                              isDark = !isDark;
                            });
                          },
                          icon: Icon(
                            Icons.done,
                            size: 28,
                            color: isDark
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
