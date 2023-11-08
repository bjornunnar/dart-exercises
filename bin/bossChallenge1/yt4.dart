/*
  Continued..
  Multiply previous answer with 50, print the steps as before.
  Store the result as step3
 */

import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
  int step2 = 0;
  int step3;
  print('Give me a number between 2 and 10');
  try {
    step0 = int.parse(stdin.readLineSync().toString());
  } catch (e) {
    print("That's not a number!");
    return;
  }

  if (step0 > 1 && step0 < 11) {
    step1 = step0 * 2;
    step2 = step1 + 5;
    step3 = step2 * 50;
    print("Great job on entering the number $step0.");
    print("$step0 * 2 = $step1");
    print("$step1 + 5 = $step2");
    print("$step2 * 50 = $step3");
  } else {
    print("You entered the number $step0. Too bad.");
  }
}
