/*
 Continued..
 Now, after the last calculation, ask the user if his birthday, save the answer
 to a string variable. Tell him to write yes or no.

 Yes:
    Tell him you're sorry you missed it
 No:
    Ask if you are invited.
 Neither
    Tell him him he needs to run the program again.
    After you told him that he did wrong, put this code after the print
    statement, this will make the program end there.

 HINT: if, else if, else and .toLowerCase()
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
    print("$step2 *50 = $step3");
  } else {
    print("You entered the number $step0. Too bad.");
  }

  print(
      "Ok, now that's out of the way, did you just have a birthday?\n'yes'\n'no'");

  String birthdayQuestion = stdin.readLineSync().toString().toLowerCase();

  switch (birthdayQuestion) {
    case ("yes"):
      {
        print("Too bad I missed it.");
        break;
      }
    case ("no"):
      {
        print("Am I invited?");
        break;
      }
    default:
      {
        print("Well guess what, you need to run the program again.");
      }
  }
}
