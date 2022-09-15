import 'dart:math';

void main() {
  //This is a single line comment

  /* this is a comment
  written over
  multiple lines.. */

  print('Hello, Dart!');
  print("\n*******************************************************\n");
  print("Hello, Dart Apprentice reader!");
  print("\n*******************************************************\n");
  /* A statement is a command, something you tell
  the computer to do. */

  print('Hello, Dart Apprentice reader!');
  print("\n*******************************************************\n");
  /* An expression is a value or something that
  can be calculated as a value... */

  print(42);
  print("\n*******************************************************\n");
  print(3 + 2);
  print("\n*******************************************************\n");
  print('Hello, Dart Apprentice reader!');
  print('\n*******************************************************\n');
  var x = 33;
  print(x);

  /* Ari Operators */

  print(2 + 6);
  print('\n*******************************************************\n');
  print(10 - 2);
  print('\n*******************************************************\n');
  print(2 * 4);
  print('\n*******************************************************\n');
  print(24 / 3);
  print('\n*******************************************************\n');

// Decimal numbers

  print(22 / 7);
  print('\n*********************************\n');

  /* For Integer division you use
  the truncating division operator */

  print(22 ~/ 7);
  print('\n*********************************\n');

// Euclidean modulo
  print(28 % 10);
  print('\n*********************************\n');

// Order of operation

/* Dart uses the order of precedence when
solving complex arithmetic operations
Brackets,
of, 
division,
multiplication,
addition, and
subtraction. popularly known as BODMAS IN THE
 MATHEMATICS SYLLABUS*/

  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5));
  print('\n*********************************\n');

  print(350 / 5 + 2);
  print('\n*********************************\n');
  print(350 / (5 + 2));
  print('\n*********************************\n');

  /// MATHS FUNCTIONS

  print(sin(45 * pi / 180));
  print('\n*********************************\n');
  print(cos(135 * pi / 180));
  print('\n*********************************\n');
  print(sqrt(2));
  print('\n*********************************\n');
  print(max(5, 10));
  print('\n*********************************\n');
  print(min(-5, -10));
  print('\n*********************************\n');
  print(max(sqrt(2), pi / 2));
  print('\n*********************************\n');

  /// NAMING DATA

  // Variables

  int number = 10;
  print(number);
  print('\n*********************************\n');
  number = 15;
  print(number);
  // The int type stores integers.

  double apple = 3.14159;
  print(apple);
  print('\n*********************************\n');

  // The type double is used to store decimal numbers

  print(10.isEven);
  print('\n*********************************\n');
  print(3.14159.round());
  print('\n*********************************\n');

// Type inference

  var someNumber = 10;
  someNumber = 15;
  print(someNumber);

  // Constants
  /* constants are immutable data
  i.e once it has been declared it cant be cha
  nged later on */

  const myConst = 10;
}
