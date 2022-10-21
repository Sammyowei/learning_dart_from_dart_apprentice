void main() {
  const input = 12;
  final output = compliment(input);
  print(output);
  helloPersonAndPet("Samuelson", "Fluffy");
  print(fullName("Samuelson", "Owei", "Mr."));
  print(fullName("Samuelson", "Owei"));
  print(withinTolerance(value: 8));
  print(withinTolerance(value: 15));
  print(withinTolerance(value: 9, min: 7, max: 11));
  print(withinTolerance(value: 10, min: 7));
  hello();
  print(hellor());
  printHello();

  print(triple(5));

// Anonymous Functions
  final multiply = (int a, int b) {
    return a * b;
  };

  print(multiply(4, 5));

  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final trippled = number * 3;
    print(trippled);
  });

  // var counter = 0;
  // final incrementCounter = () {
  //   return counter++;
  // };

  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      return counter += 1;
    };
    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1());
  print(counter2());
  print(counter1());
  print(counter1());
  print(counter2());
}

// String compliment(int number) {
// return "$number is a nice number";
// }

compliment(number) {
  return "$number is a nice number";
}

// Using multiple conditions.
// Positional parameters.

void helloPersonAndPet(String person, String pet) {
  print(" Hello $person, and your furry firend, $pet!");
}

// Making parameters Optional.

String fullName(String firstName, String lastName, [String? title]) {
  if (title != null) {
    return "$title $firstName $lastName";
  } else {
    return " $firstName $lastName";
  }
}

bool withinTolerance({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && max >= value;
}

// Making named parameter required
// named parameters are optional by default

void hello() {
  print("Hello");
}

String hellor() {
  return "Hello";
}

var myPreciousData = 5873;

String anInnocentLookingData(String name) {
  myPreciousData = -1;
  return "Hello, $name, heh, heh, heh";
}

void printHello() {
  print("Hello");
}

int number = 4;
String greeting = "Hello";
bool isHungry = true;

// Passing Functions to Functions
void namedFunction(Function anonymousFunction) {
// code
}

//Returning Functions from Functions
Function namedFunction2() {
  return () {
    print("Hello");
  };
} /*
functions that returns function or accepts them as parameter 
are called higher order functions.
*/

// Returning a function

Function applyMultipier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

final triple = applyMultipier(3);

// Anonymous function is known as closure.

// Arrow Function

int add(int a, int b) => a + b;
