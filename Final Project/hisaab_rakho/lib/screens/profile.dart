/**************************
* File Name: profile.dart *
* Author: Ammar S.A.A     *
* Content: Profile Screen *
**************************/

import 'package:flutter/material.dart';
import 'package:hisaab_rakho/includes/classes/session.dart';
import 'package:hisaab_rakho/main.dart';
import './../includes/bottom_navigation.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final String? userName = Session.getUserName();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // User Profile Container
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // User Profile Icon (Replace with Icon(Icons.account_circle))
                const Icon(
                  Icons.account_circle,
                  size: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  userName ?? 'User Name',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Account Container
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                // Account Icon on the left
                Image.asset(
                  'assets/account.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                // Account Text on the right
                const Text(
                  'Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Settings Container
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                // Settings Icon on the left
                Image.asset(
                  'assets/settings.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                // Settings Text on the right
                const Text('Settings',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          // Sign Out Container
          GestureDetector(
            onTap: () {
              if (Session.signOut()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              }
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  // Sign Out Icon on the left
                  Image.asset(
                    'assets/sign_out.png',
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  // Sign Out Text on the right
                  const Text('Sign Out',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
      bottomNavigationBar: bottomNavigation(context, 2),
    );
  }
}
