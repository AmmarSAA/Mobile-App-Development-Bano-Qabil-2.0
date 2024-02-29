/************************
* File Name: users.dart *
* Author: Ammar S.A.A   *
* Content: Users Info   *
************************/

class User {
  String name;
  String email;
  String password;

  User({
    required this.name,
    required this.email,
    required this.password,
  });
}

List<User> users = [
  User(
    name: 'Admin',
    email: 'admin@example.com',
    password: 'adminPassword',
  ),
  User(
    name: 'User',
    email: 'user@example.com',
    password: 'userPassword',
  ),
];
