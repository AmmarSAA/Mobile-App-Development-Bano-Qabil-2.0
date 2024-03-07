/************************************
* File Name: bottom_navigation.dart *
* Author: Ammar S.A.A               *
* Output: Bottom Navigation Bar     *
************************************/

import 'package:flutter/material.dart';
import 'package:hisaab_rakho/screens/profile.dart';
import '../screens/dashboard.dart';
import './../screens/create_transaction.dart';

BottomNavigationBar bottomNavigation(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: 'Add',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'Profile',
      ),
    ],
    onTap: (index) {
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dashboard()),
          );
          break;
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateTransaction()),
          );
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Profile()),
          );
          break;
      }
    },
  );
}
