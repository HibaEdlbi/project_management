import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryTextTheme: const TextTheme(
    headlineSmall: TextStyle(
      color: Color(0xff0A324D),
      fontSize: 10,
    ),
    headlineMedium: TextStyle(
      color: Color(0xff0A324D),
      fontSize: 20,
    ),
  ),
  // primarySwatch: Colors.brown,
  // cardColor: Colors.green,
  colorScheme: ColorScheme.light(
    primary: Color(0xff0A324D),
    secondary: Colors.grey.shade200,
    tertiary: Color(0xffD9D9D9),
  ),
);

// ThemeData darkTheme = ThemeData(
//   primaryTextTheme: const TextTheme(
//       headlineSmall: TextStyle(
//     color: Colors.blue,
//     fontSize: 20,
//   )),
//   primaryColor: Colors.purple,
//   primarySwatch: Colors.blue,
//   cardColor: Colors.orange,
//   appBarTheme: const AppBarTheme(
//     color: Colors.black,
//   ),
//   colorScheme: ColorScheme.dark(
//     background: Colors.green,
//     primary: Colors.grey.shade900,
//     secondary: Colors.grey.shade800,
//   ),
// );