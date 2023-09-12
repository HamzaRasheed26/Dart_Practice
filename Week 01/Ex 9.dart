// Generate a random number between 1 and 100. Ask the user to guess the number,
// then tell them whether they guessed too low, too high, or exactly right.
// Keep track of how many guesses the user has taken, and when the game ends, print this out

import 'dart:io';
import 'dart:math';

void main() {
  int num = Random().nextInt(100) + 1;
  int guess = 0;

  while (guess != num) {
    stdout.write("Guess a number between 1 and 100: ");
    guess = int.parse(stdin.readLineSync()!);

    if (guess < num) {
      print("Too low");
    } else if (guess > num) {
      print("Too high");
    } else {
      print("You guessed it!");
    }
  }
}