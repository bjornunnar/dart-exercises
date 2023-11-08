/*
 Continued..
 After the multiplication, add 5 to the result of said multiplication.
 Print the steps so the user can see what is happening.

 Store the result as step2
 */
import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
  int step2 = 0;
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
      step1 = step0 * 2;
      step2 = step1 + 5;
      print("Great job on entering the number $step0.");
      print("$step0 * 2 = $step1");
      print("$step1 + 5 = $step2");
    } else {
      print("You entered the number $step0. Too bad.");
    }
  }
}
