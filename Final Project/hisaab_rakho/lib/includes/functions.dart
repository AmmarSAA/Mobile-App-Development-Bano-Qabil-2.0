/****************************
* File Name: functions.dart *
* Author: Ammar S.A.A       *
* Output: Functions         *
* Content: Functions for    *
* 1. verifyUser             *
* 2. addUser                *
****************************/

// Database
import 'classes.dart';

/*
1. Verifies User Credentials
@Author:	Syed Ammar Ahmed
@Date:		29-Feb-2024
@input:		Email And Password
@output:	True/False Based On Entered User Credentials
*/
bool verifyUser(String email, String password) {
  for (var user in users) {
    if (user.email == email && user.password == password) {
      return true;
    }
  }
  return false;
}

/*
2. Add User Credentials
@Author: Syed Ammar Ahmed
@Date: 29-Feb-2024
@input: Email And Password
@output: True/False Based On Entered User Credentials
*/
bool addUser(String email, String password) {
  // Check if the user with the given email already exists
  bool userExists = users.any((user) => user.email == email);

  if (!userExists) {
    // Add a new user to the users list
    User newUser = User(email: email, password: password, name: '');
    users.add(newUser);
    return true; // User added successfully
  }

  return false; // User with the same email already exists
}
