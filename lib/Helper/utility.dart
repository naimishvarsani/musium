import 'package:flutter/material.dart';

class AppColor {
  static Color bgcolor = const Color(0xFF121111);
  static Color primaryColor = const Color(0xFF06A0B5);
  static Color boxcolor = const Color(0xFF1E1E1E);
  static Color whitecolor = const Color(0xFFffffff);
}

mixin PrefernceKey {
  static String isIntroductionScreenLoaded = "isIntroductionScreenLoaded";
}

class AppFont {
  static String semibold = 'montserratsemibold'; // 600: 'SemiBold',
  static String medium = 'MontserratMedium'; // 500: 'Medium',
  static String bold = 'MontserratBold'; // 700: 'Bold',
  static String regular = 'MontserratRegular'; // 400: 'Regular',
}

mixin AppImage {
  static String imges = "assets/images/";
}
