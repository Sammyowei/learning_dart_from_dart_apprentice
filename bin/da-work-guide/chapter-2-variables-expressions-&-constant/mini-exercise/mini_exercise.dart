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
}
