// Date: 21/1/24
// Instructor: Salman Bediya
// Course: Mobile App Development

import 'package:flutter/material.dart'; // Compulsory\
import 'pages/chessBoardShort.dart';

void main() {
  runApp(const MyApp());// ye line hmesha aye gy

}

// stl = stateless class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // parent waly ko child waley function sy replace kr dera hai 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App!",
      theme: ThemeData(
        primarySwatch: Colors.amber
        ),
        home: ChessBoardShort(),
      );
  }
}
