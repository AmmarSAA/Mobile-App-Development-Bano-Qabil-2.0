import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/header.png"),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    labelStyle: GoogleFonts.akayaTelivigala(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff2F80ED),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "********",
                    labelText: "Password",
                    labelStyle: GoogleFonts.akayaTelivigala(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff2F80ED),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: const OutlineInputBorder(),
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset("assets/footer.png"),
        ],
      ),
    );
  }
}
