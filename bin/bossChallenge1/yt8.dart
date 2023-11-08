/*
 Continued..

 Now that we have our conditions, we can continue.
 Create a if-else block, were we enter the if block only if both condition1 and
 condition 2 are met. Inside there, we want to subtract the year the user entered
 from the result from step4, and save the results as step5.

 If both condition1 and condition2 are true:
  subtract the year the user entered from the result from step4
  As usual, print what operations you are performing.
 Else:
  User is a fool, exit the program

 */
import 'dart:io';

void main() {
  int step0 = 0;
  int step1 = 0;
  int step2 = 0;
  int step3 = 0;
  int step4 = 0;
  int step5 = 0;
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

  step4 = step3 + bias;
  print("The number $step3 + your bias number, $bias = $step4");

  print("We are not done yet!");
  print("Tell me the year you were born:");
  String userInput = stdin.readLineSync().toString();
  int userDecade = 0;
  try {
    userDecade = int.parse(userInput);
  } catch (e) {
    print("That's not a number!");
    return;
  }
  bool condition1 = userInput.length == 4;

  int decade = int.parse(userInput.substring(0, 2));

  bool condition2 = (decade == 19 || decade == 20);

  print('Year: $userInput');
  print('Length is 4: $condition1');
  print('Decade: $decade');
  print('Decade is valid: $condition2');

  if (condition1 && condition2) {
    step5 = step4 - userDecade;
    print("I will now subtract your birth year from the number $step5:");
    print("$step4 - $userDecade = $step5");
  } else {
    print("Evidently you are a fool, goodbye now.");
    return;
  }
}
