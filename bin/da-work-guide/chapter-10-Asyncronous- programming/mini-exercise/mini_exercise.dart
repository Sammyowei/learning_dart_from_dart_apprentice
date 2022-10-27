import 'dart:async';

Future<void> main() async {
  /// 1. Use the Future.delayed constructor to provide a string after two
  /// seconds that says “I am from the future.”
  // await Future.delayed(
  // Duration(seconds: 2),
  // );
  // print('I am from the future');

  /// 2. Create a String variable named message that awaits the future to
  /// complete with a value.
  // final message = 'this future is completed';
  // print(message);

  /// 3. Surround the code above with a try-catch block.

  try {
    await Future.delayed(Duration(seconds: 2));
    print('I am from the future');
  } catch (error) {
    print('This is an $error');
  } finally {
    await Future.delayed(Duration(seconds: 1));
    print('wow this code from the future');
  }
}
