import 'dart:io';

void greet() {
  print('===========================');
  print("Hangman Game");
  print('===========================');
  print('Guess The Right Letters To Save Your Friend');
}

void disply_wrongGuess(int wrongGuess) {
  final stages = [
    '''
  +---+
  |   |
      |
      |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
      |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
  |   |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|   |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|\\  |
      |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|\\  |
 /    |
      |
=========
''',
    '''
  +---+
  |   |
  O   |
 /|\\  |
 / \\  |
      |
=========
'''
  ];
  print(stages[wrongGuess]);
}

void display_status(List<String> incorrect, String answer) {
  print('Incorrect Guesses:\n');
  for (var char in incorrect) {
    stdout.write(char);
  }
  print(' ');
  print('Current word: ');
  for (int i = 0; i < answer.length; i++) {
    stdout.write('${answer[i]}');
  }
  print('\n');
}

void end_game(String answer, String codeword) {
  if (answer == codeword) {
    print('You Saved The Person,Congratulations!');
  } else {
    print('Oh No! The man is hanged');
    print('The correct word was: $codeword');
  }
}
