class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;
  BankAccount(
    this.accountNumber,
    this.balance,
    this.accountType,
    this.interestRate,
  );
  void deposite(int amount) {
    balance += amount;
    print("Deposited Successfully.");
  }

  void withDraw(int amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrawn Successfully.");
    } else {
      print("Insufficient funds. Withdrawal unsuccessful.");
    }
  }

  void addInterest() {
    balance += balance * (interestRate / 100);
    print("Updated your balance as per your interest rate Successfully.");
  }

  void display() {
    print(
        "--- Account Info ---\nAccount Number: ${accountNumber}\nBalance: ${balance}\nAccount Type: ${accountType}\nInterest Rate: ${interestRate}\n--- --- --- ---");
  }
}
