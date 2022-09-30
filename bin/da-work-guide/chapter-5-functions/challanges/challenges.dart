import 'dart:math';

void main() {
  challenge2();
  challenge1();
  challenge3();
}
/* Challenge 1: Prime time 
Write a function that checks if a number is prime. */

void challenge1() {
  bool isNumberDivisible(int number, int divisor) {
    return number % divisor == 0;
  }

  bool isPrime(int number) {
    var isPrime = true;
    for (var i = 2; i <= sqrt(number); i++) {
      if (isNumberDivisible(number, i)) {
        isPrime = false;
      }
    }
    return isPrime;
  }

  print(isPrime(6));
  print(isPrime(13));
  print(isPrime(8893));
}
/* Challenge 2: Can you repeat that? 
Write a  function named repeatTask with the following definition: 
int repeatTask(int times, int input, Function task)
It repeats a given task on input for times number of times.
Pass an anonymous function to repeatTask to square the input 
of 2 four times. Confirm that you get the result 65536, since 2 
squared is 4, 4 squared is 16, 16 squared is 256, 
and 256 squared is 65536. */

void challenge2() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  final result = repeatTask(4, 2, (num input) {
    return input * input;
  });

  print(result);
}

/* Challenge 3: Darts and arrows 
Update Challenge 2 to use arrow syntax */

void challenge3() {
  int repeatTask(int times, int input, Function task) {
    int result = task(input);
    for (var i = 1; i < times; i++) {
      result = task(result);
    }
    return result;
  }

  // The anonymous function now uses arrow syntax.
  final result = repeatTask(4, 2, (num input) => input * input);

  print(result);
}
