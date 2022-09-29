import 'dart:math';

void main() {
  /// Boolean values

  const yes = true;
  const no = false;

  print(yes);
  print(no);

// Boolean operators

// testing equality ==

  const doesOneEqualsTwo = (1 == 2);
  print(doesOneEqualsTwo);

// tesitng inequality

  const doesOneNotEqualTwo = (1 != 2);
  print(doesOneNotEqualTwo);

  const alsoTrue = !(1 == 2);
  print(alsoTrue);

  // Testing greater and less than

  const isOneGreaterThanTwo = (1 > 2);
  print(isOneGreaterThanTwo);

  const sOneLessThanTwo = (1 < 2);
  print(sOneLessThanTwo);

// Testiing less than or equal to.

  print(1 <= 2);
  print(2 <= 2);

// Testing greater than or equal to

  print(2 >= 1);
  print(2 >= 2);

  /// Boolean Logic

// AND Operator

  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling);

  // OR Operator

  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatapus = willTravelToAustralia || canFindPhoto;
  print(canDrawPlatapus);

// Operator Precedence

  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;
  print(andTrue);
  print(andFalse);
  print(orTrue);
  print(orFalse);

  print(3 > 4 && 1 < 2 || 1 < 4);

  /* 
      !  is executed first
  >= > <= < this operators comes second in the precedent tree
   == !=  this comes third in the precedence tree
     && this comes forth in the preceedence tree
     || and this executes lastly in the precedence tree
   */

  print(3 > 4 && (1 < 2 || 1 < 4)); //! false
  print((3 > 4 && 1 < 2) || 1 < 4); //! true

  // String equality
  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print(dogEqualsCat);

// The if Statement

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  // The else clause

  const animal = 'Fox';
  if (animal == 'cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

// Else if Chain

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow Down.';
  } else if (trafficLight == 'green') {
    command = 'Go.';
  } else {
    command = 'Invalid Color';
  }
  print(command);

  //Variable Scope
  /*
  A Scope is the extent to which a variable can be seen 
  throughout your code 
  const global = 'Hello, world'; 
  void main() { 
    const local = 'Hello, main'; 
    if (2 > 1) { 
      const insideIf = 'Hello, anybody?'; 
      print(global); 
      print(local); 
      print(insideIf); 
      }
      print(global); 
      print(local); 
      print(insideIf); // Not allowed! }


    make your variables have the smallest scope
    they can get by with i.e define your variables to where you use them
    as possible doing so makes their purpose more clear
    and it also prevents you from using or changing them in places
    where you shouldn't.
  */

  // Ternary Operator
  // Ternary operator takes three oprands instead
  // of two oprand.
  // (condition)? valueIfTrue : valueIfFalse;

  const score = 83;

  // String message;
  // if (score >= 60) {
  //   message = 'You Passed.';
  // } else {
  //   message = 'Sorry, You Failed.';
  // }
  // print(message);

  const message = (score >= 60) ? 'You Passed.' : 'You Failed.';
  print(message);

//Switch Statement.

/*
 switch (variable) { 
  case value1: 
  // code 
  break; 
  case value2: 
  // code 
  break; 
  ... 
  default: 
  // code 
  } 
  */

  // Switch Statement was made to replace the else-if chain

  const number = 3;
  if (number == 0) {
    print('zero');
  } else if (number == 1) {
    print('one');
  } else if (number == 2) {
    print('two');
  } else if (number == 3) {
    print('three');
  } else if (number == 4) {
    print('four');
  } else {
    print('something else');
  }

  switch (number) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    case 4:
      print('Four');
      break;
    default:
      print('Something Else');
  }

  // Swtich Statements does not support ranges
  // like number >5. Only Equality == checking is allowed
  //if your conditions involves ranges the if statement should be used.

  // Switching on String

  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella');
      break;
    default:
      print('Am not familiar with this weather.');
  }

  // Switching on Enums.

  const weatherToday = Weather.cloudy;

  switch (weatherToday) {
    case Weather.sunny:
      print('Put on SunScreen');
      break;
    case Weather.snowy:
      print('Get your Skis.');
      break;
    case Weather.rainy:
    case Weather.cloudy:
      print('Bring an Umbrella');
      break;
  }
// Printing an enum gives you it's value

  print(weatherToday);
  // you can get the index or ordinal placement of an enum

  final index = weatherToday.index;
  print(index);

//Loops

// While Loops

// A while loop repeats block of codes as far as the boolean
//condition remains true..

/* 
while(condition){
  loop code
}
 */
  var sum = 1;
  // while (sum < 10) {
  //   sum += 4;
  //   print(sum);
  // }

  // do {
  //   sum += 4;
  //   print(sum);
  // } while (sum < 10);
  // Breaking out of the loop

  while (true) {
    sum += 4;
    print(sum);

    if (sum > 10) {
      break;
    }
  }

  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print("not a six");
  }
  print("finally you've got a six");

  // For loop.

  // for (var i = 0; i < 5; i++) {
  //   print(i);
  // }

  // Skipping an iteration

  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

// For-in loop

  var myString = "i love Dart";
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

// For each loop.

  const myNumber = [1, 2, 3];
  myNumber.forEach((number) {
    print(number);
  });
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}
// Naming enums
// enum names starts must start with an uppercase as the initial.
// the value of an enum should use lowerCamelCase naming convention.
