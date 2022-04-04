// Name: Gerard Vince I. Lillo
// Course: BSIT
// Subject: Applications Development & Emerging Technologies
// Section: BIT322K-KTa
// Git: https://github.com/geddzz/ADET21_ACT1_LILLO

import 'dart:io';

typedef PassInt = void Function(int);

main() async {
  var file = File("bank.txt");
  var contents;
  var answer;
  var balance;

  while (answer != 4) {
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
    } else if (answer == '2') {
      // Withdraw
    } else if (answer == '3') {
      // Deposit
    } else if (answer == '4') {
      // Exit
      exit(0);
    } else {
      // Invalid Input
      stdout.writeln("Invalid Input!");
    }
  }

  contents = await file.readAsString();
  double.parse(contents);
  balance = contents;
  //stdout.writeln("Balance is $balance");

  // Write File
  var bank_update = await File('bank.txt').writeAsString(balance);
}

class bank_action {
  void get_balance() {
    // get balance
    stdout.writeln("balance in bank action");
  }
}

class BankAccount implements bank_action {
  void get_balance() {
    // get balance
    stdout.writeln("balance in bank account");
  }
}
