import 'dart:ui';
import 'package:sooshiz/utils/constants.dart';

import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle heading1Style = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
    color: Colors.black
  );
  static TextStyle heading2Style = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
      color: Colors.black
  );

  static TextStyle heading3Style = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
      color: Colors.black
  );
  static TextStyle subHeadingStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
  );
  static TextStyle paragraph1Style =  TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: Gray300,
  );
  static TextStyle paragraph1Style400 =  TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: Gray400,
  );
  static TextStyle paragraph2Style = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
  );
  static TextStyle paragraph2StyleGray = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: Color(0xFF9DA4AA)
  );
  static TextStyle totalStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
    color: Color(0xFF464D53),
  );
  static TextStyle totalPriceStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
    color: Colors.black,
  );
}