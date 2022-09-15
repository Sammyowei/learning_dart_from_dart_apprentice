import 'dart:math';

void main() {
  /* 
  In the example above you found the sine of 45°
  by first converting 45° to radians and then 
  using the Dart sin function, which works in
  radians, to calculate the result.
  Now print the value of 1 over the square root
  of 2 in Dart. Confirm that it equals the sine
  of 45°. This is your first mini-exercise.
  You can find the answers in the 
  mini_exercise folder in the supplemental 
  materials that come with this book.
   */

  print(1 / sqrt(2));
  print(sin(45 * pi / 180));

  /// MINI-EXERCISE 2

  /* 
  1. Declare a constant of type int called
   myAge and set it to your age. 
  2. Declare a variable of type double called averageAge.
  Initially, set the variable to your own age.
  Then, set it to the average of your age and
  your best friend’s age. 
  3. Create a constant called testNumber
  and initialize it with whatever integer
  you’d like. Next, create another constant
  called evenOdd and set it equal to
  testNumber modulo 2. Now change testNumber
  To various numbers. What do you notice about
  evenOdd?
   */

  const myAge = 18; // Question 1
  double averageAge = (myAge + 18) / 2; // Question 2
  print(averageAge);

  const testNumber = 9;
  const evenOdd = testNumber % 2;
  print(evenOdd);
}
