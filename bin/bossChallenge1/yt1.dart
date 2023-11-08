/*
   Create a program that asks a user for a number between 2 and 10.
   Store this number as a variable called step0.

   If the number is not between 2 and 10 (including 2 and 10) then
   print the number the user entered, and tell hem it's wrong.

   Print thank you if the user puts in a number between 2 and 10.
   HINT: Use the AND operator && to check two conditions in a row.
 */

import 'dart:io';

void main() {
  int step0 = 0;
  print('Give me a number between 2 and 10');
  try {
    step0 = int.parse(stdin.readLineSync().toString());
  } catch (e) {
    print("That's not a number!");
    return;
  }

  if (step0 > 1 && step0 < 11) {
    print("Great job on entering the number $step0.");
  } else {
    print("You entered the number $step0. Too bad.");
  }
}
