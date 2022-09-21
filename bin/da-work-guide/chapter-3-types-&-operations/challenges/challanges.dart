void main() {
/* 
Challenge 1: Teacher’s grading 
You’re a teacher, and in your class, attendance 
is worth 20% of the grade, the homework is worth 
30% and the exam is worth 50%. Your student got 
90 points for her attendance, 80 points for her 
homework and 94 points on her exam. 
Calculate her grade as an integer percentage 
rounded down.
 */
  const attendance = 90 * (20 / 100);
  const homeWork = 80 * (30 / 100);
  const exam = 94 * (50 / 100);

  final integerPercent = attendance + homeWork + exam;
  print(integerPercent.round());

  /*Challenge 2: Same same, but different 
  This string has two flags that look the same. 
  But they aren’t! One of them is the flag of 
  Chad and the other is the flag of Romania.
  const twoCountries = 'ø'; Which is which? 
  Hint: Romania’s regional indicator sequence 
  is RO, and R is 127479 in decimal. 
  Chad, which is Tishād in Arabic and Tchad in 
  French, has a regional indicator sequence of 
  TD. Sequence letter T is 127481 in decimal.
  */

  const twoCountries = 'ø';
  print(twoCountries.codeUnits);

/* Challenge 3: How many?
Given the following string: 
const vote = 'Thumbs up! %'; 
How many UTF-16 code units are there? How many 
Unicode code points are there? How many Unicode 
grapheme clusters are there? */

  const vote = 'Thumbs up! 👍';
  print(vote.codeUnits);
  print(vote.runes);

/* Challenge 4: Find the error 
What is wrong with the following code? 
const name = 'Ray'; 
name += ' Wenderlich'; 
*/

// const name = 'Ray';
//  name += 'Wenderlich';

  /// Once a variable is named const
  /// it cannot be changed or modified...

/* Challenge 5: What type?
What’s the type of value? 
const value = 10 / 2; 
*/

  const value = 10 / 2;
  print(value.runtimeType);

/* Challenge 6: In summary 
What is the value of the constant named summary? 
const number = 10; const multiplier = 5; 
final summary = '$number \u00D7 $multiplier = ${n umber * multiplier}'; 
*/

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary);
}
