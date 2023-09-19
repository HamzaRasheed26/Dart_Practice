// Write a password generator in Dart. Be creative with how you generate passwords - strong
// passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The
// passwords should be random, generating a new password every time the user asks for a new
// password. Include your run-time code in a main method.

import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the length of the password: ");
  int length = int.parse(stdin.readLineSync()!);
  print("Enter the number of passwords: ");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < number; i++) {
    print(generatePassword(length));
  }
}

String generatePassword(int length) {
  String password = "";
  Random random = new Random();
  for (int i = 0; i < length; i++) {
    int randomInt = random.nextInt(93) + 33;
    password += String.fromCharCode(randomInt);
  }
  return password;
}
