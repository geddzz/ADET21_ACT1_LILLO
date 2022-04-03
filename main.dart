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
  }

  if (await file.exists()) {
    // Read File
    contents = await file.readAsString();
    print(contents);

    // Write File
    //var fileCopy = await File('output.txt').writeAsString(contents);
    //print(await fileCopy.exists());
    //print(await fileCopy.length());
  }
}

class BankAction(){
  void get_balance(){
    // get balance
  }
  void Withdraw(){
    // Withdraw
  }
  void Deposit(){
    // Deposit
  }
}

class BankAccount implements BankAction{
  double balance;
  
}