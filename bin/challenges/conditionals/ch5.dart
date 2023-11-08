/*
  Copy the code from ch4 - Try the bonus challenge if you are up for it!

  BONUS: In practise, a double CAN NEVER be even or odd. Can you change the
         program s.t if the user selects the divide operation, we simply state
         that the result is neither even or odd?


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
  bool neitherNor = false;

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
        neitherNor = true;
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
  if (neitherNor) {
    print("Our calculations say that your result is neither even nor odd.");
  } else if (result % 2 == 0 || result == 0) {
    print("Your result is an even number!");
  } else {
    print("Your result is an odd number!");
  }
}
