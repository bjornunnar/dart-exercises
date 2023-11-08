/*
 Continued..

 Now we will add to the previous condition we made.
 Before going into the if block, create a integer called bias with value 0.
 We will change this bias based on the answer from the user.

 Yes:
  Set the bias variable to 1770
 No:
  Set the bias variable to 1769
 Neither yes or no
  Keep the same condition as before

 After the whole condition chain (the if, else if, else) has finished, then
 using the number you got when you multiplied by 50, add the variable bias
 to the number, store it in another variable.

 As before, print to the user what you are doing.
 */
import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
  int step2 = 0;
  int step3 = 0;
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
    print("$step2 *50 = $step3");
  } else {
    print("You entered the number $step0. Too bad.");
  }

  int bias = 0;
  print(
      "Ok, now that's out of the way, did you just have a birthday?\n'yes'\n'no'");

  String birthdayQuestion = stdin.readLineSync().toString().toLowerCase();

  switch (birthdayQuestion) {
    case ("yes"):
      {
        bias = 1770;
        print("Too bad I missed it.");
        break;
      }
    case ("no"):
      {
        bias = 1769;
        print("Am I invited?");
        break;
      }
    default:
      {
        print("Well guess what, you need to run the program again.");
      }
  }

  int step4 = step3 + bias;
  print("The number $step3 + your bias number, $bias = $step4");
}
