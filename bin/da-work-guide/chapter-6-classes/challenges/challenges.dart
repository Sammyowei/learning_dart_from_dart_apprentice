void main(List<String> args) {
  final bert = Students('Bert', 'Rolls', 95);
  print(bert);

  final ernie = Students('Ernie', 'Roberto', 85);

  print(ernie);

  final findSurfaceArea = Sphere(radius: 12);
  print(findSurfaceArea.volume);
  print(findSurfaceArea.surfaceArea);
}

/* 
Challenge 1: Bert and Ernie 
Create a Student class with final firstName and lastName 
String properties and a variable grade as an int property. 
Add a constructor to the class that initializes all the properties. 
Add a method to the class that nicely formats a Student for printing. 
Use the class to create students bert and ernie with grades of 95 and 
85, respectively. */

class Students {
  Students(this.firstName, this.lastName, this.grade);
  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() {
    // TODO: implement toString
    return 'First Name:$firstName, Last Name:$lastName, Grade: $grade';
  }
}

/* 
Challenge 2: Spheres 
Create a Sphere class with a const constructor that takes a positive length 
radius as a named parameter. Add getters for the the volume and surface area 
but none for the radius. Don’t use the dart:math package but store your own 
version of pi as a static constant. Use your class to find the volume and surface 
area of a sphere with a radius of 12. 
*/

class Sphere {
  const Sphere({required this.radius});
  static const pi = 22 / 7;

  final int radius;
  String get volume {
    return 'The Volume of a Sphare = ${volumeFormular.toStringAsFixed(2)}';
  }

  String get surfaceArea =>
      'The Surface area of a Sphare = ${surfaceAreaFormular.toStringAsFixed(2)}';

  double get volumeFormular => 4 / 3 * pi * (radius * radius * radius);
  double get surfaceAreaFormular => 4 * pi * (radius * radius);
}
