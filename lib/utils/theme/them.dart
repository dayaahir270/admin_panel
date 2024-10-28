
import 'package:flutter/material.dart';

import 'custom_them/appbar_theme.dart';
import 'custom_them/bottom_sheet_theme.dart';
import 'custom_them/checkbox_theme.dart';
import 'custom_them/chip_theme.dart';
import 'custom_them/elevated_button_theme.dart';
import 'custom_them/outline_button_theme.dart';
import 'custom_them/text_field_them.dart';
import 'custom_them/text_theme.dart';

class KTheme {
  KTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: KTextTheme.lightTextTheme,
      chipTheme: KChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: KAppBarTheme.lightAppBarTheme,
      checkboxTheme: KCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: KOutlineButtonTheme.lightOutlineButtonTheme,
      inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: "Poppins",
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  textTheme: KTextTheme.darkTextTheme,
  chipTheme: KChipTheme.darkChipTheme,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: KAppBarTheme.darkAppBarTheme,
  checkboxTheme: KCheckboxTheme.darkCheckboxTheme,
  bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
  elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
  outlinedButtonTheme: KOutlineButtonTheme.darkOutlineButtonTheme,
  inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,

  );
}

