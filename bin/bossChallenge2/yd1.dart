/*
Create the same program as in bossChallenge1:yt1, but instead of exiting if the
input is wrong, make a while loop around it and keep asking the user for
the input until he puts a correct input into it.

IMPORTANT! Make sure that BEFORE you create the while loop, you FIRST need to
create the int variable. Take a look at the hint for more info.

HINT:
  You can use a infinite while loop for this. For example, this while loop
  will run forever, until the user inputs 100. Once that happens, the while
  loop breaks and we print out the final text.

  int nbr; // <-- LOOK, OUTSIDE OF THE WHILE LOOP
  while (true) {
    print('Please write something larger than 100.');
    nbr = int.parse(stdin.readLineSync()); // <-- LOOK, ASSIGN VARIABLE!
    if (nbr > 100) {
      break;
    }
  }
  print('You wrote $nbr! Big number! Much wow!.'); // <-- LOOK! Variable used!

 */

import 'dart:io';

void main() {
  int step0 = 0;
  bool loop = true;
  while (loop) {
    print('Give me a number between 2 and 10');
    try {
      step0 = int.parse(stdin.readLineSync().toString());
    } catch (e) {
      print("That's not a number!");
      return;
    }

    if (step0 > 1 && step0 < 11) {
      loop = false;
      print("Great job on entering the number $step0.");
    } else {
      print("You entered the number $step0. Too bad, try again.");
    }
  }
}
