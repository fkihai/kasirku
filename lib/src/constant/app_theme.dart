import 'package:flutter/material.dart';
import 'package:kasirku/src/constant/colors.dart';
import 'package:kasirku/src/core/assets/fonts.gen.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    primaryColorLight: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: FontFamily.poppins,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        color: AppColors.secondary,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.secondary,
      textTheme: ButtonTextTheme.normal,
    ),
  );
}
