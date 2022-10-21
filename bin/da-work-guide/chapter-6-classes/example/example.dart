import 'user.dart';

void main() {
  // final user = User(_id: 42, _name: "Samuelson");
  // user
  //   .._name = "Samuelson"
  //   .._id = 42;
  // // Printing an object
  // print(user);
  // print(user.toJson());

  // // Callng the named constructor

  // final anonymousUser = User.anonymous();
  // print(anonymousUser);

  final vicki = User(id: 24, name: "Vicki");
  // vicki._name = 'Nefarious Hacker';
  print(vicki);

  // final jb = User(id: -1, name: 'JB Lorenzo');
  final jb = User(id: 100, name: 'JB Lorenzo');
  print(jb);

  const user = User(id: 42, name: 'Samuelson');
  print(user);

  const anonymousUser = User.anonymous();
  print(anonymousUser);
  // final map = {'id': 10, 'name': 'Manda'};
  // final manda = User.fromJson(map);
  // print(manda);

  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  anotherObject.myProperty = 2;
  print(myObject.myProperty);

  const ray = User(id: 42, name: 'Ray');
  print(ray.id);
  print(ray.name);
  // print(ray.isBigId);

  final email = Email('samuelsonowei@gmail.com');

  final emailString = email.value;
  print(emailString);

  final value = SomeClass.myProperty;
  SomeClass.myMethod();
  print(value);

  // final mySingleton = MySingleton.instance;
  // print(mySingleton);
  final mySingleton = MySingleton();
  print(mySingleton);

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}

/// Constructors
// Default Constructors

class Address {
  //it is eguivalent to writing it like this
  Address();
  var value = "";
}

// Custom Constructor
//this is similar to the way you write functon by giving the
//constructor a parameter.

//Long-form Constructor
//check the user class

// Short-form constructors
//check user class for examples

// Named constructor.
// named constructor takes the following pattern
// ClassName.identifierName()
// example of a named constructor is below th e short-form constructor example


//Forwarding constructors
// delete the named anonymous constructor to impliment the forwarding constructo.


// Optional or named parameters
// you can make parameters optional using square brackets []
// You make parametes optional and named using curly braces {}
// you make parameter named and required using the required keyword and curley braces required and {}

// Adding named parameter for User 
//check User class



// Initializer lists

// Private variables


// factory constructors 
