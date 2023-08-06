import 'package:deltangi/views/constants/my_colors.dart';
import 'package:deltangi/views/constants/text_style.dart';
import 'package:flutter/material.dart';

class AppThemeManager {
  static ThemeData get darkMode => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: MyColors.kBlackColor,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: MyColors.kPrimaryDarkColor,
          background: MyColors.kBlackColor,
          onPrimary: Colors.white,
          error: MyColors.kErrorColor,
          secondary: MyColors.kSecondaryDarkColor,
          onError: Colors.white,
          onBackground: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          surface: MyColors.kSurfaceColorDark,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: MyColors.kBlack, 
          elevation: 0,  
        ),
        disabledColor: MyColors.kDisableColor,
        fontFamily: 'iransansx',
        textTheme: const TextTheme(
            titleLarge: AppTextStyle.kTitleLarge,
            headlineLarge: AppTextStyle.kHeadlineLarge,
            bodyLarge: AppTextStyle.kBodyLarge,
            bodyMedium: AppTextStyle.kBodyMedium,
            labelSmall: AppTextStyle.kLabelSmall,
            bodySmall: AppTextStyle.kBodySmall,
            headlineSmall: AppTextStyle.kHeadlineSmall),
        dividerTheme: DividerThemeData(
          color: MyColors.kSurfaceColorDark,
        ),
        // switchTheme: SwitchThemeData(

        // )
      );
  static ThemeData get lightMode => ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, 
          elevation: 0,  
        ),
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyColors.kBackGroundColorLight,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: MyColors.kPrimaryLight,
          background: MyColors.kBackGroundColorLight,
          onPrimary: MyColors.kBlackColor,
          error: MyColors.kErrorColor,
          secondary: MyColors.kSecondaryLight,
          onError: Colors.black,
          onBackground: MyColors.kBlackColor,
          onSecondary: Colors.black,
          onSurface: MyColors.kBlackColor,
          surface: MyColors.kBackGroundColorLight,
        ),
        disabledColor: MyColors.kDisableColor,
        fontFamily: 'iransansx',
        textTheme: const TextTheme(
            titleLarge: AppTextStyle.kTitleLarge,
            headlineLarge: AppTextStyle.kHeadlineLarge,
            bodyLarge: AppTextStyle.kBodyLarge,
            bodyMedium: AppTextStyle.kBodyMedium,
            labelSmall: AppTextStyle.kLabelSmall,
            bodySmall: AppTextStyle.kBodySmall,
            headlineSmall: AppTextStyle.kHeadlineSmall),
        dividerTheme: DividerThemeData(
          color: MyColors.kDisableColor,
        ),
      );
}
