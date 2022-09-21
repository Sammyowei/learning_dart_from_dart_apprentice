import 'package:characters/characters.dart';

void main() {
  // Annotating variables explicitly..

  // int myInterger = 10;
  // double myDouble = 3.14;
  // print(myInterger);
  // print(myDouble);

  // Creating constant variablesger
  // Constant variables are used to make data immutable

  const myInteger = 10;
  const myDouble = 3.14;
  print(myInteger);
  print(myDouble);

  // Checking the type at runtie
  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType);

  // Type Conversion..
  var integer = 100;
  var decimal = 12.5;
  integer = decimal.toInt();
  print(integer);

  // operators with mixed types
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);

// Type casting

  num someNumber = 3;
  final someInt = someNumber as int;
  print(someInt.isEven);

  final someDouble = someNumber.toDouble();
  print(someDouble);

  // Strings
  print('Hello, Dart!');
  var greeting = 'Hello Dart!';
  print(greeting);
  greeting = 'Hello, Flutter';
  print(greeting);

  // gETTING CHARACTERS
  var salutation = 'Hello!';
  print(salutation.codeUnits);
  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  const flag = '🇲🇳';
  print(flag.runes);

  const family = '👨‍👩‍👧‍👦';
  print(family.runes);
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  print(family.characters.length);

  // Single quotes vs zdouble quotes
// 'I like cats'
// "I like Cats"

// Concatenation

  // in order to catenate you should use the string buffer

  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  print(message);

  // Interpolation

  const name = 'Ray';
  const introduction = 'Hello my name is $name';
  print(introduction);

  const oneThird = 1 / 3;
  // const sentence = 'on third os $oneThird.';
  // print(sentence);
  final sentence = 'One Third is ${oneThird.toStringAsFixed(3)}.';
  print(sentence);

  // multi-line string

  const bigString = '''
you can have a string 
that contains multiple 
lines
by
doing this.
''';
  print(bigString);

  // Inserting characters from their codes

  print('I \u2764 Dart\u0021');
  print('I love \u{1f3af}');

  // Objects and dynamic types

  var myVariable;
  myVariable = 43;
  myVariable = 'hello';
}
