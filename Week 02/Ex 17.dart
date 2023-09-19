// Time for some fake graphics! Let’s say we want to draw game boards that look like this:
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// This one is 3x3 (like in tic tac toe).
// Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

void main() {
  print('Enter the size of the game board: ');
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    print(' ---' * size);
    print('|   ' * (size + 1));
  }
  print(' ---' * size);
}
