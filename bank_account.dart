class BankAccount {
  String ownerName;
  String accountNumber;
  double balance;
  BankAccount(this.ownerName, this.accountNumber, this.balance);
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited \$${amount}. New balance: \$${balance}');
    } else {
      print('Invalid deposit amount.');
    }
  }
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrew \$${amount}. Remaining balance: \$${balance}');
    } else if (amount > balance) {
      print('Insufficient balance for withdrawal of \$${amount}');
    } else {
      print('Invalid withdrawal amount.');
    }
  }
  void displayBalance() {
    print('Account Owner: $ownerName');
    print('Account Number: $accountNumber');
    print('Current Balance: \$${balance}');
    print('-------------------');
  }
}

void main() {
  BankAccount account = BankAccount('Mohamed Youssef', 'ACC-98765', 1500.0);

  account.displayBalance();

  account.deposit(500.0);
  account.deposit(250.0);

  account.withdraw(300.0);
  account.withdraw(2000.0);

  account.displayBalance();
}
