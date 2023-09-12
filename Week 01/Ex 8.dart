// Make a two-player Rock-Paper-Scissors game against computer.
// Ask for player’s input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Rock-Paper-Scissors game!");
  print("Enter your name: ");
  String name = stdin.readLineSync()!;
  print("Hello $name, let's play!");
  print("Enter your choice: ");
  String choice = stdin.readLineSync()!;
  print("Your choice is $choice");
  List<String> choices = ["rock", "paper", "scissors"];
  int rand = Random().nextInt(choices.length);
  String computerChoice = choices[rand];
  print("Computer choice is $computerChoice");
  if (choice == computerChoice) {
    print("It's a tie!");
  } else if (choice == "rock" && computerChoice == "paper") {
    print("Computer wins!");
  } else if (choice == "rock" && computerChoice == "scissors") {
    print("$name wins!");
  } else if (choice == "paper" && computerChoice == "rock") {
    print("$name wins!");
  } else if (choice == "paper" && computerChoice == "scissors") {
    print("Computer wins!");
  } else if (choice == "scissors" && computerChoice == "rock") {
    print("Computer wins!");
  } else if (choice == "scissors" && computerChoice == "paper") {
    print("$name wins!");
  }
}
