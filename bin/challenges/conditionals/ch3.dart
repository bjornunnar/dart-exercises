/*
  Copy the code from ch1 and ch2 so that you have a program that asks for two
  numbers, then an operation.

  Then, based on what the user inputs, calculate the results using the chosen
  math operator.

  0 -> print nbr1 + nbr2 = results
  1 -> etc
  2 -> etc
  3 -> etc
  4 -> etc

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

  var result;

  switch (input) {
    case 0:
      {
        result = "$a + $b = ${a + b}";
        break;
      }
    case 1:
      {
        result = "$a - $b = ${a - b}";
        break;
      }
    case 2:
      {
        result = "$a * $b = ${a * b}";
        break;
      }
    case 3:
      {
        result = "$a / $b = ${a / b}";
        break;
      }
    case 4:
      {
        result = "$a % $b = ${a % b}";
        break;
      }
  }
  print(result);
}
