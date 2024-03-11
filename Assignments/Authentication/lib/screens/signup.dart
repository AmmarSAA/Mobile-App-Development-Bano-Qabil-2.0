import 'package:flutter/material.dart';
import 'package:authentication_app/screens/login.dart';

import '../widgets/customButton.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(children: [
              _imageBox("assets/header.png"),
              Positioned(
                top: 15,
                right: 35,
                child: CustomButton(
                    btnName: "SIGN IN",
                    callback: signin,
                    width: 122,
                    height: 40,
                    fontsize: 20,
                    fontColor: const Color(0xff2F80ED),
                    buttonBackgroundColor: const Color(0xffFFFFFF)),
              ),
            ]),
          ),
          const Text("NEW USER? GET STARTED NOW",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F))),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 22),
            child: _socialMediaImages(),
          ),
          _dividerOR(),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 46),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 20.5),
                    child: _displayText("Email ID*", const Color(0xff4F4F4F))),
                _showTextField(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0, top: 10),
                  child: _displayText("Password*", const Color(0xff4F4F4F)),
                ),
                _showTextField(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomButton(
                topMargin: 20,
                rightMargin: 46,
                leftMargin: 26,
                btnName: "SIGN UP",
                callback: signupBut,
                width: 356,
                height: 44,
                fontsize: 20,
                fontColor: const Color(0xffFFFFFF),
                buttonBackgroundColor: const Color(0xff2F80ED)),
          ),
          _textInBox("Terms and Conditions | Privacy Policy"),
          Flexible(child: _imageBox("assets/footer.png")),
        ],
      ),
    );
  }

  // Social Media Images
  Row _socialMediaImages() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/google.png",
          width: 40,
          height: 26,
        ),
        Image.asset(
          "assets/facebook.png",
          width: 27,
          height: 26,
        ),
        Image.asset(
          "assets/twitter.png",
          width: 26.82,
          height: 25.79,
        ),
      ],
    );
  }

  // Divider with OR Text
  Row _dividerOR() {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xff828282),
            thickness: 1,
            endIndent: 16,
          ),
        ),
        Text("OR",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Color(0xff4F4F4F))),
        Expanded(
          child: Divider(
            color: Color(0xff828282),
            thickness: 1,
            indent: 16,
          ),
        ),
      ],
    );
  }

  // TextField
  SizedBox _showTextField() {
    return SizedBox(
      width: 356,
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )),
      ),
    );
  }

  // Text to Display
  Text _displayText(String displayText, Color? fontColor) {
    return Text(
      displayText,
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: fontColor),
    );
  }

  // Terms Text
  SizedBox _textInBox(String textToShow) {
    return SizedBox(
      height: 45,
      width: 208,
      child: Text(
        textToShow,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff4F4F4F)),
      ),
    );
  }

  // Asset Image Container
  SizedBox _imageBox(String imagePath) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        imagePath,
        fit: BoxFit.fill,
      ),
    );
  }

  void signin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void signupBut() {
    print("Main SignUP Button Worked");
  }

  void forget() {
    print("Forget");
  }
}
