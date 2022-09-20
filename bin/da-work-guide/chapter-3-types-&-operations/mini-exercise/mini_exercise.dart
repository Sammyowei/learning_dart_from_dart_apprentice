import 'dart:html';

void main() {
  /* Mini-exercises 
  1. Create a constant called age1 and set it 
  equal to 42. Create another constant called 
  age2 and set it equal to 21. Check that the 
  type for both constants has been inferred 
  correctly as int by hovering your mouse
   pointer over the variable names in VS Code. 
   */
  const age1 = 42;
  const age2 = 21;
  print(age1);
  print(age2);
  //both are integers......

  /* 
  2. Create a constant called averageAge and 
  set it equal to the average of age1 and age2 
  using the operation (age1 + age2) / 2. 
  Hover your mouse pointer over averageAge to 
  check the type. Then check the result of averageAge. 
  Why is it a double if the components are all int?
   */

  const averageAge = (age1 + age2) / 2;
  print(averageAge);
  // the reason why this is so is because of the division operator
  // which makes it a double.
}
