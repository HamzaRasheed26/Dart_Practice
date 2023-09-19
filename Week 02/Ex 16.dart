// Create a program that will play the “cows and bulls” game with the user. The game works like this:
// • Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every
//   digit the user guessed correctly in the correct place, they have a “cow”. For every digit
//   the user guessed correctly in the wrong place is a “bull.”
// • Every time the user makes a guess, tell them how many “cows” and “bulls” they have.
//   Once the user guesses the correct number, the game is over. Keep track of the number
//   of guesses the user makes throughout the game and tell the user at the end.

import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random 4-digit number
  final Random random = Random();
  List<int> randomNumberList = [];

  while (randomNumberList.length < 4) {
    int digit = random.nextInt(10);
    if (!randomNumberList.contains(digit)) {
      randomNumberList.add(digit);
    }
  }

  final int randomNumber = int.parse(randomNumberList.join());

  int attempts = 0;

  print('Welcome to the Cows and Bulls game!');
  print('Try to guess the 4-digit number.');

  while (true) {
    stdout.write('Enter your guess: ');
    String userInput = stdin.readLineSync()!;

    if (userInput.length != 4 ||
        !userInput.runes.every((rune) => rune >= 48 && rune <= 57)) {
      print('Please enter a valid 4-digit number.');
      continue;
    }

    int guess = int.parse(userInput);
    attempts++;

    if (guess == randomNumber) {
      print('Congratulations! You guessed the correct number: $randomNumber');
      print('It took you $attempts attempts.');
      break;
    } else {
      String guessStr = guess.toString();
      String randomStr = randomNumber.toString();

      int cows = 0;
      int bulls = 0;

      for (int i = 0; i < 4; i++) {
        if (guessStr[i] == randomStr[i]) {
          cows++;
        } else if (randomStr.contains(guessStr[i])) {
          bulls++;
        }
      }

      print('Cows: $cows, Bulls: $bulls');
    }
  }
}
