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
}
