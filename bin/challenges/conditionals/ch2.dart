/*
  Write a program that asks the user to input a number between 0 and 4.

  Then, based on what the user inputs, print the following

  0 -> print 'add'
  1 -> print 'subtract'
  2 -> print 'multiply'
  3 -> print 'divide'
  4 -> print 'modulo'

 */
import 'dart:io';

void main() {
  print("Give me a number between 0 and 4");

  int input = int.parse(stdin.readLineSync().toString());
  var result;

  switch (input) {
    case 0:
      {
        result = "add";
        break;
      }
    case 1:
      {
        result = "subtract";
        break;
      }
    case 2:
      {
        result = "multiply";
        break;
      }
    case 3:
      {
        result = "divide";
        break;
      }
    case 4:
      {
        result = "modulo";
        break;
      }
  }
  print(result);
}
