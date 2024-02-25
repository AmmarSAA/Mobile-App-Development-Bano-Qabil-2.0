import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class MagicAnswer extends StatefulWidget {
  const MagicAnswer({super.key});

  @override
  State<MagicAnswer> createState() => _MagicAnswerState();
}

class _MagicAnswerState extends State<MagicAnswer> {
  String ballImage = "";
  int imageIndex = 0;

  @override
  void initState() {
    super.initState();
    magicAnswer();
  }

  void magicAnswer() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (imageIndex < 5) {
        String currentImage = "ball${imageIndex + 1}.png";
        imageIndex++;

        setState(() {
          ballImage = currentImage;
        });
      } else {
        timer.cancel();
        imageIndex = 0;
        answerQuestion();
      }
    });
  }

  void answerQuestion() {
    int randomNumber = Random().nextInt(5) + 1;
    ballImage = "ball$randomNumber.png";

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magic Answer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (ballImage.isNotEmpty) Image.asset("assets/${ballImage}"),
          ],
        ),
      ),
    );
  }
}
