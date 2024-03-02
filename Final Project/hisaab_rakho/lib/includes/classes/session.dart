/*****************************
* File Name: session.dart    *
* Author: Ammar S.A.A        *
* Content: Current User Info *
*****************************/

import '../functions.dart';
import '../classes.dart';

class Session {
  static String? _userName;
  static String? _userEmail;

  static void setUser(String userName, String userEmail) {
    _userName = userName;
    _userEmail = userEmail;
  }

  static String? getUserName() {
    return _userName;
  }

  static String? getUserEmail() {
    return _userEmail;
  }

  static void signInUser(String email, String password) {
    User? userDetails = getUserDetails(email, password);
    if (userDetails != null) {
      setUser(userDetails.name, userDetails.email);
    }
  }

  static bool signOut() {
    _userName = null;
    _userEmail = null;

    return true;
  }
}
