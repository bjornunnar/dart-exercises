/*
 Continuing from the first example, if the user enters the correct value,
 multiply this value 2. Print the formula <the-number> * 2 = <result> where
 you enter the results of the user.

 Store the results as step1.
 */
import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
  print('Give me a number between 2 and 10');
  try {
    step0 = int.parse(stdin.readLineSync().toString());
  } catch (e) {
    print("That's not a number!");
    return;
  }

  if (step0 > 1 && step0 < 11) {
    step1 = step0 * 2;
    print("Great job on entering the number $step0.");
    print("$step0 * 2 = $step1");
  } else {
    print("You entered the number $step0. Too bad.");
  }
}
