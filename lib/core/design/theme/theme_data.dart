import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/style/style_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

ThemeData getApplicattionThemeData() => ThemeData(
      // Main Font Family
      fontFamily: FontConstants.fontfamily,

      // Main Colors
      primaryColor: ColorManager.primary,
      disabledColor: ColorManager.gray2,
      scaffoldBackgroundColor: ColorManager.white,
      splashColor: ColorManager.lightPrimary, // Riple Effect

      // AppBar Theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: getMediumStyle(
          color: ColorManager.black,
          fontSize: FontSize.s19,
        ),
        backgroundColor: ColorManager.white,
        elevation: AppSize.s0,
      ),

      // cardView Theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.gray,
        elevation: AppSize.s0,
      ),

      // Button Theme
      buttonTheme: ButtonThemeData(
        shape: const RoundedRectangleBorder(),
        disabledColor: ColorManager.gray3,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary,
        height: AppSize.s35,
        minWidth: AppSize.s51,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getMediumStyle(
            color: ColorManager.white,
            fontSize: FontSize.s15,
          ),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s10)),
        ),
      ),

      // input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        // Content Padding
        contentPadding: const EdgeInsets.all(AppPadding.p10),
        // Hint Style
        hintStyle: getRegularStyle(
          color: ColorManager.gray,
          fontSize: FontSize.s14,
        ),
        // Lable Style
        labelStyle: getMediumStyle(
          color: ColorManager.gray,
          fontSize: FontSize.s14,
        ),
        // Error Style
        errorStyle: getRegularStyle(
          color: ColorManager.error,
          fontSize: FontSize.s14,
        ),

        // Enabled Border Style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.gray3,
            width: AppSize.s1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              AppSize.s5,
            ),
          ),
        ),

        // Focused Border Style
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              AppSize.s5,
            ),
          ),
        ),

        // Error Border Style
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              AppSize.s5,
            ),
          ),
        ),

        // Focused Error Border Style
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              AppSize.s5,
            ),
          ),
        ),
      ),

      // Text Theme
      textTheme: TextTheme(
        displayMedium: getMediumStyle(
          color: ColorManager.black,
          fontSize: FontSize.s19,
        ),
        headlineLarge: getBoldStyle(
          // My Cart
          color: ColorManager.black,
          fontSize: FontSize.s25,
        ),
        headlineMedium: getBoldStyle(
          color: ColorManager.primary,
          fontSize: FontSize.s22,
        ),
        headlineSmall: getRegularStyle(
          // Filter
          color: ColorManager.gray,
          fontSize: FontSize.s16,
        ),
        titleMedium: getMediumStyle(
          color: ColorManager.black,
          fontSize: FontSize.s16,
        ),
        labelLarge: getRegularStyle(
          color: ColorManager.captionColor,
          fontSize: FontSize.s18,
        ),
        bodyLarge: getMediumStyle(
          color: ColorManager.gray,
          fontSize: FontSize.s16,
        ),
        bodySmall: getRegularStyle(
          color: ColorManager.gray4,
          fontSize: FontSize.s12,
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            getRegularStyle(
              color: ColorManager.gray,
              fontSize: FontSize.s18,
            ),
          ),
        ),
      ),
    );
