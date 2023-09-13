// Write a program (using functions!) that asks the user for a long string containing multiple words. 
// Print back to the user the same string, except with the words in backwards order.

import 'dart:io';

void main() {
  print('Enter a long string containing multiple words:');
  String input = stdin.readLineSync()!;
  print(reverseWords(input));
}

String reverseWords(String input) {
  List<String> words = input.split(' ');
  String reversed = '';
  for (int i = words.length - 1; i >= 0; i--) {
    reversed += words[i] + ' ';
  }
  return reversed;
}