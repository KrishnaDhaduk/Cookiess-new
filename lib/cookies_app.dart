import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'common/common.dart';
import 'logic/providers/theme_provider.dart';
import 'models/enum.dart';
import 'modules/bottomview/bottomview.dart';
import 'routes/routes.dart';
import 'splash/splash_screen.dart';

BuildContext? applicationcontext;

class CookiessApp extends StatefulWidget {
  @override
  _CookiessAppState createState() => _CookiessAppState();
}

class _CookiessAppState extends State<CookiessApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (_, provider, child) {
        final ThemeData _theme = provider.themeData;
        return MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en'), // English
            const Locale('fr'), //French
            const Locale('ja'), // Japanises
            const Locale('ar'), //Arebic
          ],
          navigatorKey: navigatorKey,
          title: 'Food',
          debugShowCheckedModeBanner: false,
          theme: _theme,
          initialRoute: RoutesName.Splash,
          routes: _buildRoutes(),
          builder: (BuildContext context, Widget? child) {
            _setFirstTimeSomeData(context, _theme);
            return Directionality(
              textDirection:
                  context.read<ThemeProvider>().languageType == LanguageType.ar
                      ? TextDirection.rtl
                      : TextDirection.ltr,
              child: Builder(
                builder: (BuildContext context) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaleFactor: MediaQuery.of(context).size.width > 360
                          ? 1.0
                          : MediaQuery.of(context).size.width >= 340
                              ? 0.9
                              : 0.8,
                    ),
                    child: child ?? SizedBox(),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

// when this application open every time on that time we check and update some theme data
  void _setFirstTimeSomeData(BuildContext context, ThemeData theme) {
    applicationcontext = context;
    _setStatusBarNavigationBarTheme(theme);
    //we call some theme basic data set in app like color, font, theme mode, language
    context
        .read<ThemeProvider>()
        .checkAndSetThemeMode(MediaQuery.of(context).platformBrightness);
    context.read<ThemeProvider>().checkAndSetFonType();
    context.read<ThemeProvider>().checkAndSetLanguage();
  }

  void _setStatusBarNavigationBarTheme(ThemeData themeData) {
    final brightness = !kIsWeb && Platform.isAndroid
        ? themeData.brightness == Brightness.light
            ? Brightness.dark
            : Brightness.light
        : themeData.brightness;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: brightness,
      statusBarBrightness: brightness,
      systemNavigationBarColor: themeData.scaffoldBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: brightness,
    ));
  }

  Map<String, WidgetBuilder> _buildRoutes() {
    return {
      RoutesName.Splash: (BuildContext context) => Splash(),
      RoutesName.Home: (BuildContext context) => BottomTab(),
    };
  }
}
