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
  */
}
