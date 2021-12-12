// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ConstColor {

  static const Color neutral_white = Color(0xFFffffff);

  static const Color primary_black = Color(0xFF414951);
  static const Color gray_56 = Color(0xFF8A8884);
  static const Color red = Color(0xFFE30613);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}


//primary_301
const  primaryDark =  0xFF82B3F4;
//primary_500
const  primaryLight =  0xFF2F80ED;

abstract class AppColor {
 
}