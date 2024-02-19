// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/colors.dart';

// =============| TEXT STYLES |=============
final TextTheme myTextTheme = TextTheme(
  headlineLarge:
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 0.25),
  headlineMedium:
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  headlineSmall:
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.15),
  titleLarge:
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 0.15),
  titleMedium:
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 0.5),
  titleSmall:
      TextStyle(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge:
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.5),
  bodyMedium:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  bodySmall:
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
);

// ==========================| WIDGET STYLES |==========================

// ===| BUTTON |===
final ButtonStyle defaultButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: kWhite, // text color
  backgroundColor: primaryColor, // button color
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  textStyle: const TextStyle(fontWeight: FontWeight.bold),
);

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  foregroundColor: primaryColor, // text color
  // backgroundColor: kWhite,
  side: const BorderSide(color: primaryColor, width: 1),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  textStyle: const TextStyle(fontWeight: FontWeight.bold),
);
