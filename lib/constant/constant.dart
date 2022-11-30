import 'package:flutter/material.dart';

class Constant {
  // [COLORS]
  static const Color darkWhite = Color(0xffF4FAFF);
  static const Color yellow = Color(0xffF6AE2D);
  static const Color orange = Color(0xffFB8500);
  static const Color dark = Color(0xff212529);
  static const Color black = Color(0xff02040F);
  static const Color white = Color(0xffFAFBFC);
  static const Color gray = Color(0xffCBCBC4);
  static const Color blackWOpacity = Color(0xffA6A6AA);

  // [TEXT STYLES]
  static const TextStyle homeProductCategoriesTitleStyle = TextStyle(
    color: Constant.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle homeProductCategoriesSeeAllButtonStyle = TextStyle(
    decoration: TextDecoration.underline,
    color: Constant.blackWOpacity,
    fontSize: 14,
  );
}
