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
}
