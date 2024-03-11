// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:authentication_app/screens/login.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(child: _imageBox("assets/header.png", mHeight)),
          Text(
            "Angel Sure",
            style: GoogleFonts.akayaTelivigala(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(47, 128, 237, 1)),
          ),
          Image.asset(
            'assets/logo.png',
            height: 239,
            width: 298,
          ),
          Flexible(child: _imageBox("assets/footer.png", mHeight)),
        ],
      ),
    );
  }

  //To the Next Page Function
  void toTheLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  //initState Function
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), toTheLoginPage);
    super.initState();
  }

  //Container in which Image placed
  SizedBox _imageBox(String imagePath, double height) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }
}
