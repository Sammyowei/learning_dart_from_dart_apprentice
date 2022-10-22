// ignore_for_file: empty_constructor_bodies

import 'dart:ffi';

import '../../chapter-6-classes/example/user.dart';

void main() {
  // print(isPositive(3));
  // print(isPositive(-1));

//Non-nullable types.

  // int myInt = 1;
  // double myDouble = 3.142334432;
  // bool myBool = true;
  // String myString = 'Hello, Dart!';
  // User myUser = User(id: 42, name: 'Ray');

// Nullable Types.

  // int? myInt = null;
  // double? myDouble = null;
  // bool? myBool = null;
  // String? myString = null;
  // User? myUser = null;

  // int? age;
  // double? height;
  // String? message;

  // print(age);
  // print(height);
  // print(message);

  // String? name;
  // name = 'Ray';
  // print(name.length);

  // If Null Operator(??)
  String? message;
  // final text = message ?? 'error';
  // print(text);

  String text;
  if (message == null) {
    text = 'Error';
  } else {
    text = message;
  }
  print(text);

  // Null-aware assignment operator(??=)

  double? fontSize;
  fontSize ??= 20.0;

  print(fontSize);

  // Null aware acccess operator (?.)

  int? age;

  print(age?.isNegative);

  // another name for ?. is the null-aware method invocation operator.

  // Null assertion operator (!)
  // var myNullableString;
  // String nonNullableString = myNullableString!;

  // the null assertion operator is postfixe ! operator
  // while the prefix ! operator is called the not-operator.

  bool flowerIsBeautiful = isBeautiful('flower') ?? true;
  print(flowerIsBeautiful);
  // Do not use the assertion operator unless you can guarantee that the variable isnt null.

  User? user;
  // user?..name = 'ray';

  // Null aware index operator (?[])

  List<int>? myList = [1, 2, 3];
  myList = null;
  int? myItem = myList?[2];
  print(myItem);

  // initializing non-nullable fields
//ways to initiailize non nullable fields
}

bool isPositive(int? anInterger) {
  if (anInterger == null) {
    return false;
  }
  return !anInterger.isNegative;
}

bool? isBeautiful(String item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  } else {
    return null;
  }
}

// Null-aware cascade operator(?..)

class User {
  // Using initializers
  // String name = 'anonymous';
  // using initializer formals
  // User(this.name);
  // String name;

  // Using an Initializer list
  // User(String name) : _name = name;
  // String _name;

  // using default parameter values

  // User([this.name = 'anonymous.']);
  // you can use this for named parameters
  User(this.name) {
    _secretNumber = _calculateSecret();
  }
  late final int _secretNumber;
  final String name;
  // late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}

/// no promotion for non-local variables

bool islong(String? text) {
  if (text == null) {
    return false;
  }
  return text.length > 100;
}

class TextWidget {
  String? text;

  bool isLong() {
    if (text == nullptr) {
      return false;
    }
    return text!.length > 100;
  }
}

/// Late keyword
// check user class

class SomeClass {
  late String? value = doHeavyCalculation();

  String? doHeavyCalculation() {
    // do heavy calculation
  }
}
