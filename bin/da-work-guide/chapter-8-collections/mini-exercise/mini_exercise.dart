void main() {
  miniChallangeQuestion1();
  miniExerciseQuestion2();
  miniExerciseQuestion3();
  miniExercisequestion4And5();
  miniExerciseQuestion6();
}

void miniChallangeQuestion1() {
  /* 
  1. Create an empty list of type String. Name it months. 
  Use the add method to add the names of the twelve months 
  */

  List<String> months = [];
  months.add('January');
  months.add('Febuary');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
}

void miniExerciseQuestion2() {
  /* 
  2. Make an immutable list with the same elements as in Mini-exercise 1. 
  */

  const immutableListOfMonths = [
    'January',
    'Febuary',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  print(immutableListOfMonths);
}

void miniExerciseQuestion3() {
  /* 
  3. Use collection for to create a new list with the month names in all 
  uppercase. 
  */
  const immutableListOfMonths = [
    'January',
    'Febuary',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  var listOfMonthsToUpperCase = [
    for (var months in immutableListOfMonths) months.toUpperCase()
  ];
  print(listOfMonthsToUpperCase);
}

void miniExercisequestion4And5() {
  /* 
  1. Create a map with the following keys: name, profession, country and city. 
  For the values, add your own information. 
  */

  final myDetails = <String, String>{
    'name': 'Samuelson Owei',
    'profession': 'Programmer',
    'country': 'Nigeria',
    'city': 'Port Harcourt',
  };
  print(myDetails);

  /* 
  2. You suddenly decide to move to Toronto, Canada. Programmatically update 
  the values for country and city 
  */

  myDetails['country'] = 'Canada';
  myDetails['city'] = 'Toronto';
  print(myDetails);

  /* 
  3. Iterate over the map and print all the values. 
  */

  for (var entry in myDetails.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}

void miniExerciseQuestion6() {
  /* 
  final scores = [89, 77, 46, 93, 82, 67, 32, 88]; 
  1. Use sort to find the highest and lowest grades. 
  */

  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores);

  /* 
  2. Use where to find all the B grades, that is, all the scores between 
  80 and 90. 
  */

  print(scores.where((score) => score > 80 && score < 90));
}
