/*
 Continued..

 Create yet another if sentence, ask the user when he was born.
 Store the result first in a String variable. Now, create two bool variables
 and one int variable

 bool condition1;
 int decade;
 bool condition2;

 Condition1:
    Check if the length of the string from the user equals to 4.
    Hint:
      You can save boolean results from conditions statements, for example
        int step0 = 6;
        bool condition = step0 <= 10;
    Hint:
      Given a string, what property (The . menu) can you use to determine the
      length of said string?


  Decade
    Fetch the decade from the year string and store it as a integer.
    Hint:
      You want to get sub-string, that is, the first two digits of the year
      string and convert it to a integer. There is a method (The . menu) for
      String variables that allows you to access a portion of a String.


  Condition2:
    This condition should be true, IF decade is EITHER 19 or 20.

 After this, print the results like this

 print('Year: $year');
 print('Length is 4: $condition1');
 print('Decade: $decade');
 print('Decade is valid: $condition2');

 And verify it works.
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
}
