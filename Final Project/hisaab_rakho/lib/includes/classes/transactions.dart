/*******************************
* File Name: transactions.dart *
* Author: Ammar S.A.A          *
* Content: Transactions Class  *
*******************************/

class Transactions {
  final String email;
  final String description;
  final int amount;
  final bool income;
  final String category;

  Transactions({
    required this.email,
    required this.amount,
    required this.income,
    required this.category,
    this.description = '',
  });
}

List<Transactions> transactions = [
  Transactions(
    email: 'admin@example.com',
    amount: 100,
    income: true,
    category: 'Salary',
    description: 'Monthly salary',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 50,
    income: false,
    category: 'Groceries',
    description: 'Weekly groceries',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 200,
    income: true,
    category: 'Bonus',
    description: 'Year-end bonus',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 30,
    income: false,
    category: 'Utilities',
    description: 'Electricity bill',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 80,
    income: true,
    category: 'Freelance',
    description: 'Freelance project payment',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 75,
    income: true,
    category: 'Part-time Job',
    description: 'Part-time job payment',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 40,
    income: false,
    category: 'Shopping',
    description: 'Clothing shopping',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 120,
    income: true,
    category: 'Gift',
    description: 'Birthday gift',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 20,
    income: false,
    category: 'Entertainment',
    description: 'Movie tickets',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 150,
    income: true,
    category: 'Bonus',
    description: 'Performance bonus',
  ),
];
