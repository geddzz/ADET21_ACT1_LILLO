// Name: Gerard Vince I. Lillo
// Course: BSIT
// Subject: Applications Development & Emerging Technologies
// Section: BIT322K-KTa
// Git: https://github.com/geddzz/ADET21_ACT1_LILLO

import 'dart:io';

main() async {
  var file = File("input.txt");
  var contents;

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
