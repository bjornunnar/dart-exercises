/*
  Write a program that asks the user for two numbers.
  Store these numbers in a variable and print them.
 */

import 'dart:io';

void main() {
  print("Give me two numbers, first one:");
  int a = int.parse(stdin.readLineSync().toString());
  print("Second one:");
  int b = int.parse(stdin.readLineSync().toString());

  String printed = "$a and $b";

  print(printed);
}
