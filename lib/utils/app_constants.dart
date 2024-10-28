import 'package:flutter/material.dart';

class AppConstant {
  static String appMainName = 'Ecomm';
  static String appPoweredBy = 'Powered By Krishna ahir';
  static String appVersion = '1.0.1';
  static String whatsAppNumber = '+923075812354';
  static const appMainColor = Color(0xFFbf1b08);
  static const appScendoryColor = Color(0xFF981206);
  static const appTextColor = Color(0xFFFBF5F4);
  static const appStatusBarColor = Color(0xFFFBF5F4);
}


class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}