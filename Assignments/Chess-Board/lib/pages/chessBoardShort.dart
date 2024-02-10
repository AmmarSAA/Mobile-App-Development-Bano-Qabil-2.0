// Date: 3/2/24
// Instructor: Salman Bediya
// Course: Mobile App Development

import 'package:flutter/material.dart';

class ChessBoardShort extends StatelessWidget {
  const ChessBoardShort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Chess Game"),
        backgroundColor: Colors.green,
         leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(6, (int index) {
          return rowWidget(index + 1);
        }),
      ),
    );
  }
}

Row rowWidget(int rowNumber) {
  if (rowNumber % 2 == 0) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
            ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
              boxWidget(Colors.white),
              boxWidget(Colors.black),
            ],
    );
  }
}

Widget boxWidget(Color color) {
  return Container(
    height: 50,
    width: 50,
    color: color,
  );
}




