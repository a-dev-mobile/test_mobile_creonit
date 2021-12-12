import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
        appBarTheme: _getAppBarTheme(context: context),
        brightness: Brightness.light,

        // primaryColor: ConstColor.primary_500,
        scaffoldBackgroundColor: ConstColor.neutral_white,
        textTheme: _getTextTheme(context: context),
        canvasColor: ConstColor.neutral_white,
        iconTheme: iconTheme());
  }

  static IconThemeData iconTheme() =>
      const IconThemeData(color: ConstColor.primary_black);

  static AppBarTheme _getAppBarTheme({required BuildContext context}) {
    Color backgroundColor = ConstColor.neutral_white;
    Color foregroundColor = ConstColor.primary_black;

    AppBarTheme appBarTheme = AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 1,
        centerTitle: true,
        foregroundColor: foregroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: backgroundColor,
            statusBarIconBrightness: Brightness.dark));

    return appBarTheme;
  }

  static TextTheme _getTextTheme({required BuildContext context}) {
    Color bodyColor = ConstColor.primary_black;

    var textTheme = Theme.of(context)
        .textTheme
        .apply(fontFamily: 'OpenSans', bodyColor: bodyColor);
    return textTheme;
  }
}
