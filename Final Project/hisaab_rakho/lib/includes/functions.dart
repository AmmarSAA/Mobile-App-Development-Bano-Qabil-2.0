/*******************************
* File Name: functions.dart    *
* Author: Ammar S.A.A          *
* Output: Functions            *
* Content: Functions for       *
* 1. verifyUser                *
* 2. addUser                   *
* 3. isUserSignedIn            *
* 4. signOut                   *
* 5. getUserDetails            *
* 6. getExpenses               *
* 7. getIncome                 *
* 8. sumExpenses               *
* 9. sumIncome                 *
* 10. calculateBalance         *
* 11. getTransactions          *
*******************************/

// Database
import 'classes.dart';

String? _userName;
String? _userEmail;

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
      _userName = user.name;
      _userEmail = user.email;
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
  bool userExists = users.any((user) => user.email == email);

  if (!userExists) {
    User newUser = User(name: '', email: email, password: password);
    _userName = newUser.name;
    _userEmail = newUser.email;
    users.add(newUser);
    return true;
  }

  return false;
}

/*
  3. Check if a user is signed in
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: True/False based on user sign-in status
  */
bool isUserSignedIn() {
  return _userName != null && _userEmail != null;
}

/*
  4. Sign out the user
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: signs out user
  */
void signOut() {
  _userName = null;
  _userEmail = null;
}

/*
  5. Fetch user details
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: user details
  */
User? getUserDetails(String email, String password) {
  for (var user in users) {
    if (user.email == email && user.password == password) {
      return user;
    }
  }
  return null;
}

/*
  6. Get Expenses for a User
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: List of expense transactions for a user
  */
List<Transactions> getExpenses(String email) {
  return transactions
      .where((transaction) => transaction.email == email && !transaction.income)
      .toList();
}

/*
  7. Get Income for a User
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: List of income transactions for a user
  */
List<Transactions> getIncome(String email) {
  return transactions
      .where((transaction) => transaction.email == email && transaction.income)
      .toList();
}

/*
  8. Sum of Expenses for a User
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: Total sum of expenses for a user
  */
int sumExpenses(String email) {
  return getExpenses(email)
      .fold(0, (total, transaction) => total + transaction.amount);
}

/*
  9. Sum of Income for a User
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: Total sum of income for a user
  */
int sumIncome(String email) {
  return getIncome(email)
      .fold(0, (total, transaction) => total + transaction.amount);
}

/*
  10. Calculate Balance for a User
  @Author: Syed Ammar Ahmed
  @Date: 29-Feb-2024
  @output: Future<int> representing the user's balance
  */
Future<int> calculateBalance(int expenses, int income) async {
  return income - expenses;
}

/*
11. Get all Transactions for a User
@Author: Syed Ammar Ahmed
@Date: 29-Feb-2024
@output: List of all transactions for a user
*/
Future<List<Transactions>> getTransactions(String email) async {
  return transactions
      .where((transaction) => transaction.email == email)
      .toList();
}
