import 'package:flutter/material.dart';

// Color primary = const Color(0xFF68daf);
const Color primary = Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textcolor = const Color(0xFF3b3b3b);
  static Color bgcolor = const Color(0xFFeeedf2);
  static Color orangeColor = Color.fromARGB(255, 127, 0, 0);

  static TextStyle textstyle =
      TextStyle(fontSize: 16, color: textcolor, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle =
      TextStyle(fontSize: 26, color: textcolor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle2 =
      TextStyle(fontSize: 21, color: textcolor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
