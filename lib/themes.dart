import 'package:flutter/material.dart';

class Themes {
  static final ThemeData kIOSTheme = new ThemeData(
      primarySwatch: Colors.green,
      primaryColor: Colors.grey[100],
      primaryColorBrightness: Brightness.light);

  static final ThemeData kDefaultTheme =
      new ThemeData(primaryColor: Colors.green, accentColor: Colors.purple);

  static ThemeData getTheme(BuildContext context) {
    return isiOS(context) ? Themes.kIOSTheme : Themes.kDefaultTheme;
  }

  static double getElevation(BuildContext context) =>
      isiOS(context) ? 0.0 : 4.0;

  static bool isiOS(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.iOS;
}
