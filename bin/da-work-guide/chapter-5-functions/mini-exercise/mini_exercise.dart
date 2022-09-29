void main() {
  const personName = "Samuelson";
  final compliment = youAreWonderful(name: personName);
  print(compliment);

  const numberOfPeople = ["Chris", "Tifinny", "Pablo"];
  numberOfPeople
      .forEach((name) => print("You are Wonderful, $name, 30 peoplethink so."));
}

/* Mini-exercises 
1. Write a function named youAreWonderful, 
with a String parameter called name. It should 
return a string using name, and say something 
like “You’re wonderful, Bob.” 
*/

String youAreWonderful({required String name, int numberPeople = 30}) {
  return "You are wonderful, $name, $numberPeople people think so.";
}

/* 2. Add another int parameter to that function 
called numberPeople so that the function returns 
something like “You’re wonderful, Bob. 
10 people think so.” */

/* Mini-exercises 
1. Change the youAreWonderful function in the first 
mini- exercise of this chapter into an anonymous 
function. Assign it to a variable called wonderful. */

var wonderful = ({
  required String name,
  required int numberPeople,
}) {
  return "You are Wonderfull,$name, $numberPeople";
};

/* 2. Using forEach, print a message telling the people 
in the following list that they’re wonderful. */


/* Change the forEach loop in the previous “You’re 
wonderful” mini-exercise to use arrow syntax. */


