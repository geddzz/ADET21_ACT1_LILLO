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
  var new_balance;

  while (answer != 4) {
    // get balance
    var file = File("bank.txt");
    var contents;
    String balance;
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
      new_balance = bank1.withdraw(balance);
      // Rewrite File
      var bank_update = await File('bank.txt').writeAsString(new_balance);
    } else if (answer == '3') {
      // Deposit
      new_balance = bank1.deposit(balance);
      // Rewrite File
      var bank_update = await File('bank.txt').writeAsString(new_balance);
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
  var value;
  double new_balance = 0;
  // get balance
  void get_balance(var balance) {
    stdout.writeln("Balance is $balance");
  }

  // withdraw
  String withdraw(var balance) {
    stdout.writeln("Enter Value to Withdraw:");
    value = stdin.readLineSync();
    new_balance = double.parse(balance) - double.parse(value);
    return new_balance.toString();
  }

  // deposit
  String deposit(var balance) {
    stdout.writeln("Enter Value to Deposit:");
    value = stdin.readLineSync();
    new_balance = double.parse(balance) + double.parse(value);
    return new_balance.toString();
  }
}

class BankAccount implements bank_action {
  var value;
  double new_balance = 0;
  // get balance
  void get_balance(var balance) {
    stdout.writeln("Balance is $balance");
  }

  // withdraw
  String withdraw(var balance) {
    stdout.writeln("Enter Value to Withdraw:");
    value = stdin.readLineSync();
    new_balance = double.parse(balance) - double.parse(value);
    // print new_balance
    stdout.writeln("New Balance is $new_balance");
    return new_balance.toString();
  }

  // deposit
  String deposit(var balance) {
    stdout.writeln("Enter Value to Deposit:");
    value = stdin.readLineSync();
    new_balance = double.parse(balance) + double.parse(value);
    // print new_balance
    stdout.writeln("New Balance is $new_balance");
    return new_balance.toString();
  }
}
