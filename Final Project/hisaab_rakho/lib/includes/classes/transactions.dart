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
  Transactions(
    email: 'admin@example.com',
    amount: 60,
    income: false,
    category: 'Dining',
    description: 'Restaurant dinner',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 120,
    income: true,
    category: 'Freelance',
    description: 'Web development project',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 25,
    income: false,
    category: 'Transportation',
    description: 'Taxi ride',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 90,
    income: true,
    category: 'Bonus',
    description: 'Quarterly performance bonus',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 35,
    income: false,
    category: 'Utilities',
    description: 'Internet bill',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 200,
    income: true,
    category: 'Investment',
    description: 'Stock market investment',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 55,
    income: false,
    category: 'Shopping',
    description: 'Electronics purchase',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 150,
    income: true,
    category: 'Bonus',
    description: 'Annual performance bonus',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 70,
    income: false,
    category: 'Entertainment',
    description: 'Concert tickets',
  ),
  Transactions(
    email: 'admin@example.com',
    amount: 180,
    income: true,
    category: 'Consulting',
    description: 'Consulting services payment',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 30,
    income: false,
    category: 'Fitness',
    description: 'Gym membership',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 80,
    income: true,
    category: 'Freelance',
    description: 'Graphic design project',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 15,
    income: false,
    category: 'Snacks',
    description: 'Snack purchases',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 60,
    income: true,
    category: 'Bonus',
    description: 'Performance bonus',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 25,
    income: false,
    category: 'Transportation',
    description: 'Bus fare',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 100,
    income: true,
    category: 'Consultation',
    description: 'Consultation fees',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 45,
    income: false,
    category: 'Books',
    description: 'Book purchases',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 110,
    income: true,
    category: 'Bonus',
    description: 'Year-end bonus',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 20,
    income: false,
    category: 'Entertainment',
    description: 'Streaming service subscription',
  ),
  Transactions(
    email: 'user@example.com',
    amount: 130,
    income: true,
    category: 'Development',
    description: 'App development payment',
  ),
];
