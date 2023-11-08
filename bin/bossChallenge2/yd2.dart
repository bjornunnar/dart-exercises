/*
 After the while loop multiply this value 2. Print the formula
 <the-number> * 2 = <result> where you write the results of the user into the
 string.

 Store the results as step1.

 Trouble? Did you make sure the step0 is defined OUTSIDE the while loop?
 */
import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
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
      print("Great job on entering the number $step0.");
      print("$step0 * 2 = $step1");
    } else {
      print("You entered the number $step0. Too bad.");
    }
  }
}
