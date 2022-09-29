void main() {
/* Challenge 1: 
Find the error What’s wrong with the following code? 
const firstName = 'Bob'; 
if (firstName == 'Bob') { 
  const lastName = 'Smith'; 
  } else if (firstName == 'Ray') { 
    const lastName = 'Wenderlich'; 
  }

final fullName = firstName + ' ' + lastName; */

  const firstName = 'Bob';
  if (firstName == 'Bob') {
    const lastName = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
  }

  // final fulName = firstName + " " + lastName;

  /// the last name only has a variable scope in the if else function..

/* Challenge 2: 
Boolean challenge 
In each of the following statements, what is the value of the Boolean expression? 
true && true 
false || false
 (true && 1 != 2) || (4 > 3 && 100 < 1) 
 ((10 / 2) > 3) && ((10 % 2) == 0) 
 */

  print(true && true); //true
  print(false || false); //false
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); //true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); // true

  /// Challenge no.4 unanswered
  /// challange no.5 unanswered

/* Challenge 6: 
The final countdown Print a countdown from 10 to 0.v */
  var counter = 10;

  while (counter <= 10) {
    counter--;
    if (counter < 0) {
      break;
    }
    print(counter);
  }

/* Challenge 7: 
Print a sequence Print the sequence 0.0, 0.1, 0.2, 
0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. */

  for (var i = 0.toDouble(); i < 1; i += 0.1) {
    print(i.toStringAsFixed(1));
  }

  var myNumber = 0.toDouble();
  while (myNumber <= 1) {
    myNumber += 0.1;
    if (myNumber < 1) {
      break;
    }
    print(myNumber.toStringAsFixed(1));
  }
}
