import 'dart:math';

void main() {
/*
 Mini-exercises 


 1. Create a constant called myAge and set it 
 to your age. Then, create a constant named 
 isTeenager that uses Boolean logic to 
 determine if the age denotes someone in the 
 age range of 13 to 19 
 */

  const myAge = 18;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print(isTeenager);

/* 2. Create another constant named maryAge and 
set it to 30. Then, create a constant named 
bothTeenagers that uses Boolean logic to 
determine if both you and Mary are teenagers. 
*/

  const maryAge = 30;
  const bothTeenager = isTeenager && (maryAge >= 13 && maryAge <= 19);
  print(bothTeenager);

/* 3. Create a String constant named reader and 
set it to your name. Create another String constant 
named ray and set it to 'Ray Wenderlich'. 
Create a Boolean constant named rayIsReader 
that uses string equality to determine if reader 
and ray are equal. 
*/

  const reader = 'Samuelson';
  const ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;
  print(rayIsReader);

  /* 
  Mini-exercises
   1. Create a constant named myAge and initialize 
   it with your age. Write an if statement to print 
   out “Teenager” if your age is between 13 and 19, 
   and “Not a teenager” if your age is not between 
   13 and 19.
   */

  const myAge2 = 18;
  var message;
  if (myAge2 >= 13 && myAge2 <= 19) {
    message = 'Teenager';
  } else {
    message = 'Not a Teenager';
  }
  print(message);

/*
2. Use a ternary conditional operator to replace 
the else- if statement that you used above. Set 
the result to a variable named answer.
  */

  const answer = (myAge2 >= 13 && myAge2 <= 19) ? 'Teenager' : 'Not a Teenager';
  print(answer);

  /* Mini-exercises 
  1. Make an enum called AudioState and give it values 
  to represent playing, paused and stopped states. 
  */

  /* 
  2. Create a constant called audioState and give it an 
  AudioState value. Write a switch statement that prints 
  a message based on the value. 
  */

  const audioState = Audiostate.playing;
  switch (audioState) {
    case Audiostate.paused:
      print('Audio is paused.');
      break;
    case Audiostate.playing:
      print('Audio is playing.');
      break;
    case Audiostate.stopped:
      print('Audio Stopped playing.');
      break;
  }

  /// loops
  ///

/* Mini-exercises 
1. Create a variable named counter and set it equal to 0. 
Create a while loop with the condition counter < 10. 
The loop body should print out “counter is X” (where X 
is replaced with the value of counter) and then increment 
counter by 1.*/

  var counter = 0;
  while (counter < 10) {
    counter++;
    print("Counter is $counter");
  }

  /* 2. Write a for loop starting at 1 and ending with 10 
  inclusive. Print the square of each number. */

  for (var i = 0; i <= 10; i++) {
    print(sqrt(i));
  }

  const number = [1, 2, 3];
  for (var number in number) {
    print(number);
  }

  number.forEach((number) {
    print(number);
  });
}

enum Audiostate {
  playing,
  paused,
  stopped,
}
