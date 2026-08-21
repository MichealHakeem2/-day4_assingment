/*
  Task 3: Bank Account
  
  Details:
  Create a BankAccount class with:
  - Attributes: ownerName, accountNumber, balance
  - A constructor to initialize them.
  - A method deposit(double amount) that adds money to the balance.
  - A method withdraw(double amount) that subtracts money only if there is enough balance.
  - A method showBalance() that prints the current balance.
  Test your class with several deposits and withdrawals.
*/

class BankAccount {
  String ownerName;
  String accountNumber;
  double balance;

  BankAccount(this.ownerName, this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited \$${amount}. New Balance: \$${balance}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount.');
    } else if (amount <= balance) {
      balance -= amount;
      print('Withdrew \$${amount}. Remaining Balance: \$${balance}');
    } else {
      print('Transaction failed: Not enough balance to withdraw \$${amount}');
    }
  }

  void showBalance() {
    print('Account Owner: $ownerName');
    print('Account Number: $accountNumber');
    print('Current Balance: \$${balance}');
    print('-------------------');
  }
}

void main() {
  BankAccount account = BankAccount('Kareem Said', 'BANK-10029', 2000.0);

  account.showBalance();

  account.deposit(500.0);
  account.withdraw(1200.0);
  account.withdraw(1500.0); // Should fail due to insufficient balance

  account.showBalance();
}
