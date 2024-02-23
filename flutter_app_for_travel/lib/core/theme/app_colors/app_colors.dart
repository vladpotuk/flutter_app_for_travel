import 'package:flutter/material.dart';

abstract class AppColors {
  //gradient color
  static const Color gradientTop = Color(0xFF0171B0);
  static const Color gradientBottom = Color(0xFF011746);

  //background & foregraudscolor
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color buttonBackgroundColor = Color(0xFF1B1B1B);
  static const Color buttonForegroundColor = Color(0xFFFFFFFF);

  //text color
  static const Color primaryTextColor = Color(0xFF2F2F2F);
  static const Color primaryIconsColor = Color(0xFF888888);
  static const Color splashTextColor = Color(0xFFE8E8E8);
  static const Color secondaryTextColor = Color(0xFF888888);
  static const Color secondaryIconsColor = Color.fromARGB(255, 195, 194, 194);
  static const Color disableTextColor = Color(0xFFC5C5C5);
  static Color backgroundIconColor = const Color(0xFF1D1D1D).withOpacity(0.4);

  //border color
  static const Color borderColor = Color(0xFF888888);
}
