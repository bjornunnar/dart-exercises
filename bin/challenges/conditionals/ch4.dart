/*
  Copy the code from ch3.

  After the operation is done (make sure to save the answer to a variable!)
  Check if the number is odd or even, print the information for the user

  HINT: The divide operation will return a double, luckily, you can store any
        integer within a double, provided you convert the integer to a double :)
        Example:
          int testVar = 10;
          int testVarAgain = 20;
          double someVar;
          someVar = testVar.toDouble();  // <-- I converted testVar to double!
          someVar = (testVar + testVarAgain).toDouble(); // <-- Same thing!

  HINT: Create the variable outside the if conditions, then assign the answer
        of the operations to it.

  HINT: You can't check if a double is even or not, but, when you convert a
        double to integer, it will simply drop it's decimal points. For example

        double someVar = 10.5;
        double someInt = someVar.toInt() // someInt will be 10, so we can
                                         // actually check if 10 is even or not.
 */
import 'dart:io';

void main() {
  print("Give me two numbers, first one:");
  int a = int.parse(stdin.readLineSync().toString());
  print("Second one:");
  int b = int.parse(stdin.readLineSync().toString());

  print("""What would you like to do? Please input 0, 1, 2, 3 or 4:
  0 - add
  1 - subtract
  2 - multiply
  3 - divide
  4 - modulo""");

  int input = int.parse(stdin.readLineSync().toString());

  String? answer;
  int result;

  switch (input) {
    case 0:
      {
        result = a + b;
        answer = "$a + $b = ${a + b}";
        break;
      }
    case 1:
      {
        result = a - b;
        answer = "$a - $b = ${a - b}";
        break;
      }
    case 2:
      {
        result = a * b;
        answer = "$a * $b = ${a * b}";
        break;
      }
    case 3:
      {
        result = (a / b).toInt();
        answer = "$a / $b = ${a / b}";
        break;
      }
    case 4:
      {
        result = a % b;
        answer = "$a % $b = ${a % b}";
        break;
      }
    default:
      {
        result = 0;
        answer = "No answer for you!";
      }
  }
  print(answer);
  if (result % 2 == 0 || result == 0) {
    print("Your result is an even number!");
  } else {
    print("Your result is an odd number!");
  }
}
