/*  
1. Create a class called Password and give it a string 
property called value.*/

class Password {
/* 
2. Add a const constructor as the only way to 
initialize a Password object. */

  const Password(this.value);

  /* 
  1. Make value a final variable, but not private. 
  */

  final String value;

/* 
3. Add a method to Password called isValid that returns 
true only if the length of value is greater than 8. 
*/
  bool isValid() {
    return value.length > 8;
  }

/* 
2. Override the toString method of Password so that 
it prints value. */
  @override
  String toString() {
    return value;
  }
}

void main(List<String> args) {
  const password = Password("Samuelson");
  print(password);
}
