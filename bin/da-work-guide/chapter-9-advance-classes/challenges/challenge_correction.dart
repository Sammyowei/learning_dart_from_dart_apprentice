void main() {
  challange1();
  challenge2();
  challange3();
}

void challange1() {
  ///Dart has a class named Comparable, which is used by the the sort method of List to sort its elements.
  ///Add a weight field to the Platypus class you made in this lesson. Then make Platypus implement Comparable
  ///so that when you have a list of Platypus objects, calling sort on the list will sort them by weight.

  final willi = Platypus(weight: 1.0);
  final greg = Platypus(weight: 1.7);
  final stewie = Platypus(weight: 2.0);
  final bibi = Platypus(weight: 2.0);
  final mumu = Platypus(weight: 3.5);

  final platypi = [
    willi,
    greg,
    stewie,
    bibi,
    mumu,
  ];

  for (var platypus in platypi) {
    print(platypus.weight);
  }

  print('------');

  platypi.sort();
  for (var platypus in platypi) {
    print(platypus.weight);
  }
}

abstract class Animal {
  void eat();
  void move();

  @override
  String toString() {
    // TODO: implement toString
    return 'i am a $runtimeType';
  }
}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus({required this.weight});
  final weight;
  @override
  void eat() {
    // TODO: implement eat
    print('Munch munch');
  }

  @override
  void move() {
    // TODO: implement move

    print('Wosh wosh');
  }

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    if (weight > other.weight) {
      return 1;
    } else if (weight < other.weight) {
      return -1;
    } else {
      return 0;
    }
  }
}

mixin EggLayer {
  void layEggs(String layer) {
    layer = 'Plop plop';
    print(layer);
  }
}

void challenge2() {
  ///Design an interface to sit between the business logic of your note-taking app and a SQL database.
  ///After that, implement a fake database class that will return mock data.

  final db = DataStorage();
  final note = db.findNote(24);
  final allNotes = db.allNote();
  final saveNote = db.saveNote('add this to all the note');
  print(note);
  print(allNotes);
  saveNote;
}

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();
  String findNote(int id);
  List<String> allNote();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  List<String> allNote() {
    // TODO: implement allNote
    return [
      'This is a note',
      'also this is a note',
      'this is also a note',
      'Buy milk',
      'Adamus is a rich kid',
    ];
  }

  @override
  String findNote(int id) {
    // TODO: implement findNote
    return 'This is a note';
  }

  @override
  void saveNote(String note) {
    print('Saving note to cyberspace');
  }
}

void challange3() {
  final timeRemaining = 3.minute;
  print(timeRemaining);
}

extension on int {
  Duration get minute => Duration(minutes: this);
}
