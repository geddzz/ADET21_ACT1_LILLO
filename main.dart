// Name: Gerard Vince I. Lillo
// Course: BSIT
// Subject: Applications Development & Emerging Technologies
// Section: BIT322K-KTa
// Git: https://github.com/geddzz/ADET21_ACT1_LILLO

import 'dart:io';

typedef PassInt = void Function(int);

main() async {
  var bank1 = BankAccount();
  var answer;

  while (answer != 4) {
    // get balance
    var file = File("bank.txt");
    var contents;
    var balance;
    // read contents
    contents = await file.readAsString();
    // convert to double
    double.parse(contents);
    balance = contents;

    stdout.writeln("--- Menu ---");
    stdout.writeln("1. Balance");
    stdout.writeln("2. Withdraw");
    stdout.writeln("3. Deposit");
    stdout.writeln("4. Exit");
    stdout.writeln("------------");
    stdout.writeln("Enter Menu No: ");
    answer = stdin.readLineSync();

    if (answer == '1') {
      // Balance
      bank1.get_balance(balance);
    } else if (answer == '2') {
      // Withdraw
    } else if (answer == '3') {
      // Deposit
    } else if (answer == '4') {
      // Exit
      stdout.writeln("Thank You!");
      exit(0);
    } else {
      // Invalid Input
      stdout.writeln("Invalid Input!");
    }
  }
  // Write File
  //var bank_update = await File('bank.txt').writeAsString(balance);
}

class bank_action {
  // get balance
  void get_balance(var balance) async {
    stdout.writeln("Balance is $balance");
  }

  // withdraw
  void withdraw(var balance) async {
    stdout.writeln("Balance is $balance");
  }

  // deposit
  void deposit(var balance) async {
    stdout.writeln("Balance is $balance");
  }
}

class BankAccount implements bank_action {
  // get balance
  void get_balance(var balance) async {
    stdout.writeln("Balance is $balance");
  }

  // withdraw
  void withdraw(var balance) async {
    stdout.writeln("Balance is $balance");
  }

  // deposit
  void deposit(var balance) async {
    stdout.writeln("Balance is $balance");
  }
}
