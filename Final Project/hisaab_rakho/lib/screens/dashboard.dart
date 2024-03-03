/****************************
* File Name: dashboard.dart *
* Author: Ammar S.A.A       *
* Content: Dashboard Screen *
****************************/

import 'package:flutter/material.dart';
import '../includes/functions.dart';
import '../includes/classes/session.dart';
import '../includes/classes.dart';
import '../includes/bottom_navigation.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/dashboard_header.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/dashboard_header.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Current Balance',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      FutureBuilder<int>(
                        future: Future(() async {
                          int expenses =
                              await sumExpenses(Session.getUserEmail()!);
                          int income = await sumIncome(Session.getUserEmail()!);
                          return calculateBalance(expenses, income);
                        }),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Text('Loading...');
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return Text('\$${snapshot.data}');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/expense_card.png'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Expense',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          FutureBuilder<int>(
                            future: Future(() async {
                              return sumExpenses(Session.getUserEmail()!);
                            }),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Text('Loading...');
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}',
                                    style:
                                        const TextStyle(color: Colors.white));
                              } else {
                                return Text('\$${snapshot.data}',
                                    style:
                                        const TextStyle(color: Colors.white));
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/income_icon.png'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Income',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          FutureBuilder<int>(
                            future: Future(() async {
                              return sumIncome(Session.getUserEmail()!);
                            }),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Text('Loading...');
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}',
                                    style:
                                        const TextStyle(color: Colors.white));
                              } else {
                                return Text('\$${snapshot.data}',
                                    style:
                                        const TextStyle(color: Colors.white));
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Transactions>>(
              future: getTransactions(Session.getUserEmail()!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  List<Transactions> transactions = snapshot.data!;
                  return ListView.builder(
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
                      String iconPath = transactions[index].income
                          ? 'assets/income_arrow.png'
                          : 'assets/expense_arrow.png';
                      return ListTile(
                        leading: Image.asset(
                          iconPath,
                          width: 24,
                          height: 24,
                        ),
                        title: Text(transactions[index].description),
                        subtitle: Text('\$${transactions[index].amount}'),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigation(context),
    );
  }
}
