class User {
// this is a short-form constructor method
  // const User({int id = 0, String name = "anonymous"})
  //     : assert(id >= 0),
  //       _id = id,
  //       _name = name;
// the colon that proceeds_id is the initializer list.

// Example of a named constructor
  // User.anonymous() {
  //   id = 0;
  //   name = 'anonymous';
  // }
  // factory User.ray() {
  //   return User(id: 43, name: 'Ray');
  // }

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  // const User.anonymous() : this();
  // //tihs is the long form constructor method example
  // // User(int id, String name) {
  // //   this
  // //     ..id = id
  // //     ..name = name;
  // // }
  // final int _id;
  // final String _name;

  // int get id => _id;
  // String get name => _name;

  // bool get isBigId => _id > 1000;

  // String toJson() {
  //   return '{"id": $_id,"name":"$_name"}';
  // }

  // @override
  // String toString() {
  //   return 'User(id: $_id, name: $_name)';
  // }

  const User({this.id = _anonymousId, this.name = _anonymousName})
      : assert(id >= 0);

  const User.anonymous() : this();
  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';
  String toJson() {
    return '{"id": $id, "name":"$name"}';
  }

// Static Method
// Creating New Object.

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'User(id: $id, name: $name)';
  }
}

// Checking for errors
/* Initializer list are great place to check for errors in the constructor parameters. */
// You use the assert keyword to check for errors

// Constant constructors

// Dart Objects

class MyClass {
  var myProperty = 1;
}

// Getters

// Setters
class Email {
  Email(this.value);
  final value;

  // String get value => _adress;
  // set value(String address) => _address = address;
}

// Static Members.

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
  // Constant

  static const myConstant = '42';
}

// Singleton pattern
class MySingleton {
  MySingleton._();
  // static final MySingleton instance = MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}
