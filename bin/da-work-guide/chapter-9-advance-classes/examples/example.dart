import 'dart:mirrors';

void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);
  final historyGrade = Grade.B;
  jane.grade.add(historyGrade);
  final child = SomeChild();
  child.doSomeWork();

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  print(marty.isEligible);
  final students = [jane, jessie, marty];
  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);
  print('\n**********************************************\n');
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  // platypus.layEggs();
  print(platypus);

// Using the interface

  // final DataRepositories repository = FakeWebSever();
  // final tempreture = repository.fetchTempreture('Berlin');

  // print(tempreture);
  final repository = DataRepositories();
  final tempreture = repository.fetchTempreture('Manila');
  print(tempreture);

  final someClass = SomeClass();
  print(someClass.myField);
  someClass.myMethod();
  final robin = Robin();
  platypus.layEggs();
  robin.layEggs();

  final original = 'abc';
  final sectet = 'abc'.encoded;
  print(sectet);
  sectet.decoded;
  final decodedSecret = sectet.decoded;
  print(decodedSecret);

  print(5.cubed);

  final language = ProgrammingLanguage.dart;
  print(language.isStronglyTyped);
}

// Extending a class

enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() {
    return fullName;
  }
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grade = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';
}

class SomeParent {
  void doSomeWork() {
    print('Parent Working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    print('Child doing some other work');
    super.doSomeWork();
  }
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grade.every((grade) => grade != Grade.F);
}

// ABSTRACT CLASSES

// creating your own abstract class

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}
//  Interfaces

// creating an interface

abstract class DataRepositories {
  factory DataRepositories() => FakeWebSever();
  double? fetchTempreture(String city);
}

// Implementing the Interface
class FakeWebSever implements DataRepositories {
  @override
  double? fetchTempreture(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myField = 42;
  void myMethod() => print(myField);
}

// class SomeClass extends AnotherClass {}
class SomeClass implements AnotherClass {
  @override
  int myField = 0;

  @override
  void myMethod() => print('Hello');
}

// Mixins.

abstract class Bird {
  void fly();
  void layEggs();
}

mixin EggLayer {
  void layEggs() {
    print('Plop Plop');
  }
}
mixin Flyer {
  void fly() => print('Swoosh Swoosh');
}

class Robin extends Bird with EggLayer, Flyer {}

// Extentions Method

String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded {
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (var codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}

// Extension on int
extension on int {
  int get cubed {
    return this * this * this;
  }
}

// enum extension

enum ProgrammingLanguage { dart, swift, javascript }

extension on ProgrammingLanguage {
  bool get isStronglyTyped {
    switch (this) {
      case ProgrammingLanguage.dart:
      case ProgrammingLanguage.swift:
        return true;

      case ProgrammingLanguage.javascript:
        return false;
      default:
        throw Exception('Unknown programming language $this');
    }
  }
}
