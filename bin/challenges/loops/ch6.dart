/*
  While loops.

  These are loops that are running until a condition is met or they get broken.
  Lets begin by writing a conditional statement first, to get the feel of it.

  1. Create a bool variable called condition;
     bool condition;

  2. Then ask the user to enter the number 100, save this to a variable
     int userNumber = int.parse(stdin.readLineSync());

  3. Assign the logical check of "is the userNumber NOT equals to 100"
     to the condition variable. I.e, if the user puts in 100, then
     the condition variable should be true.

  4. Create a if - else statement, that checks if the user entered 100. If he
     did, give him a complement, if not, tell him he's a bad user.
 */

import 'dart:io';

void main() {
  bool condition = false;
  print("Please enter the number '100':");
  int userNumber = int.parse(stdin.readLineSync().toString());
  if (userNumber == 100) {
    condition = true;
    print("Great job!");
  } else {
    print("That was not such a great job.");
  }
}
