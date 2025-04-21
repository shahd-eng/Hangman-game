import 'dart:io';
import 'dart:math';

import 'hangman_functions.dart';

void main() {
  greet();
  final words = ['flutter', 'dart', 'hangman', 'Man', 'IEEE'];
  final random = Random();
  final codeword = words[random.nextInt(words.length)].toLowerCase();
  final guessedLetter = <String>{};
  int wrongGuess = 0;
  int maxWrongGuess = 6;
  String getAnswer() {
    return codeword
        .split('')
        .map((letter) => guessedLetter.contains(letter) ? letter : '-')
        .join();
  }

  ;
  List<String> incorrect = [];
  String answer = getAnswer();

  while (answer != codeword && wrongGuess < maxWrongGuess) {
    disply_wrongGuess(wrongGuess);
    display_status(incorrect, answer);
    print('\nPlease enter your Guess');
    final input = stdin.readLineSync()?.toLowerCase();
    if (input == null || input.isEmpty || input.length > 1) {
      print('Please Enter Only One Letter');
      continue;
    }
    guessedLetter.add(input);

    if (codeword.contains(input as Pattern)) {
      print(' Great!Right Guess');
    } else {
      print(' Wrong Guess');
      wrongGuess++;
      incorrect.add(input);
    }
    answer = getAnswer();
  }
  disply_wrongGuess(wrongGuess);
  end_game(answer, codeword);
}
