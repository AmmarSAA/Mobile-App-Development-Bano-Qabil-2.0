/************************
* File Name: main.dart  *
* Author: Ammar S.A.A   *
* Output: Main Starting *
************************/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hisaab_rakho/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hisaab Rakho',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        fontFamily: GoogleFonts.inter().fontFamily,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(127, 61, 255, 100),
        ).copyWith(background: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 2.0),
          // Adjust the vertical padding to control the minimum height
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(127, 61, 255, 100),
        ).copyWith(background: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 2.0),
          // Adjust the vertical padding to control the minimum height
        ),
      ),
      themeMode: ThemeMode.light,

      // Starting Screen
      home: const Splash(),
    );
  }
}
