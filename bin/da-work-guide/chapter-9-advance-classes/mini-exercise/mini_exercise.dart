void main() {
  miniExercise1();
  miniExercise2();
  miniExercise3();
}

void miniExercise1() {
  /// Create a class named Fruit with a String field named color and a method
  /// named describeColor, which uses color to print a message.
  final fruitColor = Fruit('Red');
  print(fruitColor);

  ///  Create a subclass of Fruit named Melon and then create two Melon subclasses
  /// named Watermelon and Cantaloupe.

  final watermelonColor = Watermelon('green');
  print(watermelonColor);

  ///Override describeColor in the Watermelon class to vary the output.
}

class Fruit {
  Fruit(this.color);
  String color;

  String get describeColor => color;

  @override
  String toString() {
    return describeColor;
  }
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class Watermelon extends Melon {
  Watermelon(String color) : super(color);

  @override
  String get describeColor => 'the color of a watermelon is: $color';
}

class Cantaloupe extends Melon {
  Cantaloupe(String color) : super(color);
}

void miniExercise2() {
  /// Create an interface called Bottle and add a method to it called open.
  final sodaBottle = SodaBottle();
  sodaBottle.open();

  /// Create a concrete class called SodaBottle that implements Bottle
  /// and prints “Fizz fizz” when open is called.

  /// Add a factory constructor to Bottle that returns a SodaBottle instance.

  /// Instantiate SodaBottle by using the Bottle factory constructor and call
  /// open on the object.

  final bottle = Bottle();
  bottle.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    // TODO: implement open

    print('Fizz Fizz');
  }
}

void miniExercise3() {
  ///Create a class called Calculator with a method called sum that prints
  ///the sum of any two integers you give it.

  final calculator = Calculator();
  calculator.sum(2, 10);
}

class Calculator with Adder {}

mixin Adder {
  void sum(num a, num b) {
    print('The sum is: ${a + b}');
  }
}
