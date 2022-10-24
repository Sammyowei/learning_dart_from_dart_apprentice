void main() {
  challange1();
  challenge2();
  challengue3();
}

const paragraphOfText = '''
Write a function that takes a paragraph of text and returns a 
collection of unique String characters that the text contains.
''';

void challange1() {
  Set<String> uniqueRequest(String text) {
    return text.runes
        .map((codePoint) => String.fromCharCode(codePoint))
        .toSet();
  }

  print(uniqueRequest(paragraphOfText));
}

void challenge2() {
  Map<String, int> characterFrequency(String text) {
    final characterFrequency = <String, int>{};
    for (var codePoint in text.runes) {
      final character = String.fromCharCode(codePoint);
      final frequency = characterFrequency[character] ?? 0;
      characterFrequency[character] = frequency + 1;
    }
    return characterFrequency;
  }

  print(characterFrequency(paragraphOfText));
}

void challengue3() {
  final users = [
    User('Doctor Strange', 3),
    User('Kim Kardashians', 10),
    User('Magnus McGriffin', 90)
  ];

  List<Map<String, Object>> usersToMapList(List<User> users) {
    final userMapList = <Map<String, Object>>[];
    for (var user in users) {
      final userMap = {
        'id': user.id,
        'name': user.name,
      };
      userMapList.add(userMap);
    }
    return userMapList;
  }

  print(usersToMapList(users));
}

class User {
  User(this.name, this.id);
  final String name;
  final int id;
}
