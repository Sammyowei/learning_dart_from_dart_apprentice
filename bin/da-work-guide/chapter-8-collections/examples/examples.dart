void main() {
  lists();
  creatingImmutsbleList();
  listProperty();
  loopingOverTheElementsOfAList();
  spreadOperator();
  collectionIf();
  collectionFor();
  sets();
  intersectionAndUnionOfSets();
  maps();
  higherOrderMethod();
  sortingAndReversingAList();
}

void lists() {
//   final desserts = ['cookie', 'cupcake', 'donuts', 'pie'];
//   print(desserts);
//   List<String> snack = [];
//   var snack = <String>[];

//   Accessing elements

//   final secondElement = desserts[1];
//   print(secondElement);
//  final index = desserts.indexOf('pie');
//   final value = desserts[index];
//   print(index);
//   print(value);

//   Assigning value to list elements.
//   desserts[1] = 'cake';
//   print(desserts);

//   Adding elements to a list.

//   desserts.add('Brownies');
//   print(desserts);

//   Removing elements from a list.

//   desserts.remove('cake');
//   print(desserts);

//   Mutable and immutable lists
// desserts=[];  not allowed when a list is a final
// desserts=['cookies','cupcake','donuts','pie']; """"

//   desserts.remove('cookies');
//   desserts.remove('cupcake');
//   desserts.remove('ice cream');
}

void creatingImmutsbleList() {
  final desserts = ['cookies', 'cupcake', 'donuts', 'pie'];
  desserts.add('brownies');
  desserts.remove('pie');
  desserts[0] = 'fudge';

  // print(desserts);

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

void listProperty() {
  const drink = ['water', 'milk', 'juice', 'soda'];
  // Accessing first and last elements

  print(drink.first);
  print(drink.last);

  // checking if list cotains any elemect

  print(drink.isEmpty); // false
  print(drink.isNotEmpty); // true

  print(drink.length == 0); // false
  print(drink.length > 0); // true
}

void loopingOverTheElementsOfAList() {
  const desserts = ['cookies', 'cupcake', 'donuts', 'pie'];

  // looping in a list using a for-in loop

  for (var desserts in desserts) {
    print(desserts);
  }
  print('****************************************************');
  desserts.forEach((desserts) {
    print(desserts);
  });
  print('********************************');
  desserts.forEach(print);
}

void spreadOperator() {
  const pasteries = ['cookies', 'croissants'];
  const candy = ['Junior mints', 'Twizzlers', 'M&M\'s '];

  const desserts = ['donuts', ...pasteries, ...candy];
  print(desserts);

  // null-spread operators.

  List<String>? coffees;

  final hotDrink = ['milk tea', ...?coffees];
  print(hotDrink);
}

void collectionIf() {
  const peanutAllergy = true;

  const candy = [
    'Junior Mint',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];

  print(candy);
}

void collectionFor() {
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDesert = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDesert);
}

void sets() {
// Creating an empty set

  // final someSet = <int>{};

  final anotherSet = {1, 2, 3, 4, 5};
  print(anotherSet);

  // checking the contents in a set
  print(anotherSet.contains(1));
  print(anotherSet.contains(99));

  // adding single elements to a set
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);
  someSet.remove(2112);
  print(someSet);

  // Adding multiple elements.

  someSet.addAll([1, 2, 3, 4]);
  print(someSet);
}

void intersectionAndUnionOfSets() {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

//Intersections

  final intersection = setA.intersection(setB);
  print(intersection);

  // Union

  final union = setA.union(setB);
  print(union);
}

void maps() {
  // Creating an empty map

  // final Map<String, int> emptyMap = {};
  // ypu can also create an empty map like this

  final emptyMap = <String, int>{};

  // final emptySomething = {};
  print(emptyMap.length);

  // Initializing a map with values

  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  print(inventory);
  print(digitToWord);

  // Unique Keys

  final treasureMap = {
    'garbage': ['in the dumpater'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under you mattress'],
  };

  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
    'codde': 'clean',
  };

  print(treasureMap);
  print(myHouse);

  // Accessing elements from a map

  final numberOfCakes = inventory['cakes'];
  print(numberOfCakes?.isEven);

  // adding elements to a map

  inventory['brownies'] = 3;
  print(inventory);

  // updating an element in a map

  inventory['cakes'] = 1;
  print(inventory);

  // Removing elements from a map

  inventory.remove('cookies');
  print(inventory);

  // Map properties

  print(inventory.isEmpty);
  print(inventory.isNotEmpty);
  print(inventory.length);

  // you can also access keys and values
  print(inventory.keys);
  print(inventory.values);

  // checking for key or value existence

  print(inventory.containsKey('pies'));
  print(inventory.containsValue(42));

  // Looping  over elements in a map

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) {
    print('$key -> $value');
  });
}

void higherOrderMethod() {
  // Mapping over collectons
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);
  print(squares.toList());

  // filtering over a collection
  final evens = squares.where((square) => square.isEven);
  print(evens);
  print(evens.toList());
  // where can be used with list and sets but not with maps. only when to use where
  // in a map is whennyou acces the keys or values properties of maps.

  // Consolidating a collection
  // 1. using reduce

  const amounts = [199, 299, 299, 199, 499];
  // final total = amounts.reduce((sum, element) => sum + element);
  // print(total);

  // Using fold
  final total = amounts.fold(0, (int sum, element) => sum + element);
  print(total);
}

void sortingAndReversingAList() {
  // Sorting a List

  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  // desserts.sort();
  // print(desserts);

  // Reversing a List

  var dessertsReversed = desserts.reversed;
  print(desserts);
  print(dessertsReversed);

  // Performing a custom sort
  desserts.sort(((d1, d2) => d1.length.compareTo(d2.length)));
  print(desserts);

  // Combining higher order methods

  final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);
}
