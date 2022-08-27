import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData originalTheme() {
  TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          fontFamily: 'NotoSerif',
          color: AppColors.grey900),
      headlineMedium: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: 'NotoSerif',
          color: AppColors.grey800),
      headlineSmall: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'NotoSerif',
          color: AppColors.grey900),
      titleLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: 'NotoSerif',
          color: AppColors.grey700),
      titleMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey800),
      titleSmall: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey400),
      bodyLarge: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey900),
      bodyMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey900),
      bodySmall: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey700),
      labelLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: Colors.white),
      labelMedium: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
          color: AppColors.primaryColor),
      labelSmall: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          letterSpacing: 0.2,
          color: AppColors.errorText),
      displayLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey800),
      displayMedium: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey900),
      displaySmall: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey600),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _textTheme(base.textTheme),
    expansionTileTheme: base.expansionTileTheme.copyWith(
      iconColor: AppColors.grey600,
      collapsedTextColor: AppColors.grey800,
      backgroundColor: Colors.white,
      textColor: AppColors.grey800,
      collapsedIconColor: AppColors.grey600,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    )),
    sliderTheme: base.sliderTheme.copyWith(
      valueIndicatorColor: Colors.white,
      valueIndicatorTextStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: 'SourceSansPro',
          color: AppColors.grey600),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    errorColor: AppColors.errorText,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
    )),
    unselectedWidgetColor: AppColors.grey300,
    checkboxTheme: base.checkboxTheme.copyWith(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
      fillColor: MaterialStateProperty.resolveWith((_) => AppColors.lightPink),
      checkColor: MaterialStateProperty.resolveWith((_) => AppColors.grey900),
    ),
    iconTheme: base.iconTheme.copyWith(color: AppColors.grey900),
    radioTheme: base.radioTheme
        .copyWith(fillColor: MaterialStateProperty.resolveWith((_) => AppColors.secondaryPink)),
    primaryColorLight: AppColors.primaryColorLight,
    primaryColorDark: AppColors.primaryColorDark,
    backgroundColor: AppColors.primaryColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primaryColor,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: AppColors.primaryColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: AppColors.background,

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
  );
}
