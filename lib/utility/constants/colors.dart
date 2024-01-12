import 'package:flutter/material.dart';
/*import 'package:freezed_annotation/freezed_annotation.dart';*/

const kTextBlackColor = Color(0xFF121212);
const kTextGrayColor = Color(0xFF707070);
const kBaseColorLegacy = Color(0xFF638239);
const kBaseColor = Color(0xFF00893C);
const kBaseColor2 = Color(0xFFF1F6E9);
const kBadgeColor = Color(0xFFFA3E3E);
const kLineColor = Color(0xFFDDDDDD);
const kBorderColor = Color(0xFFBBBBBB);
const k4D4D4D = Color(0xFF4D4D4D);
const kEEEEEE = Color(0xFFEEEEEE);
const kDDDDDD = Color(0xFFDDDDDD);
const kF7A02E = Color(0xFFF7A02E);
const kA0A0A0 = Color(0xFFA0A0A0);
const k707070 = Color(0xFF707070);
const k0075D3 = Color(0xFF0075D3);
const k88B34C = Color(0xFF88B34C);
const kBottomNavActiveColor = Color(0xFF8EC640);
const kWhiteColor = Color(0xFFFFFFFF);
const kBlackColor = Color(0xFF01120E);
const kGreyColor = Colors.grey;
const k000000 = Color(0xFF000000);
const kF2C881 = Color(0xFFF2C881);
const kFF4C4C = Color(0xFFFF4C4C);
const kF3F5F4 = Color(0xFFF3F5F4);
const kECFAF3 = Color(0xFFECFAF3);
const k18B25F = Color(0xFF18B25F);
const kE8F8EF = Color(0xFFE8F8EF);
const kFF9100 = Color(0xFFFF9100);
const k008454 = Color(0xFF008454);
const kD9D9D9 = Color(0xFFD9D9D9);
const kF8F8F8 = Color(0xFFF8F8F8);
const k006BFF = Color(0xFF006BFF);
const k6B717A = Color(0xFF6B717A);
const kF5F5F5 = Color(0xFFF5F5F5);
const k1DBF73 = Color(0xFF1DBF73);
const k006A4E = Color(0xFF006A4E);
const kTransparent = Colors.transparent;

const kLightGreyColor = Color(0xFFF4ECFF);
const kLightGreyVariantColor = Color(0xFFFFF7EB);
const kDarkGreyColor = Color(0xFF656E72);
const kDarkGreyVariantColor = Color(0xFFD3D8DC);
const kUltraLightPrimaryColor = Color(0xFFE7F1EE);


Color hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

/*class JsonColorConverter implements JsonConverter<Color, String> {

  const JsonColorConverter();
  @override
  Color fromJson(String json) {
    String value ='0xFF$json';
    return Color(int.parse(value));
  }

  @override
  String toJson(Color color) {
    return color.value.toRadixString(16).substring(4);
  }

}*/




// Hexadecimal opacity values
// 100% — FF
//
// 95% — F2
//
// 90% — E6
//
// 85% — D9
//
// 80% — CC
//
// 75% — BF
//
// 70% — B3
//
// 65% — A6
//
// 60% — 99
//
// 55% — 8C
//
// 50% — 80
//
// 45% — 73
//
// 40% — 66
//
// 35% — 59
//
// 30% — 4D
//
// 25% — 40
//
// 20% — 33
//
// 15% — 26
//
// 10% — 1A
//
// 5% — 0D
//
// 0% — 00