import 'dart:async';

Future<void> main() async {
  miniExercise1();
  miniExercise2();
}

Future<void> miniExercise1() async {
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

Future<void> miniExercise2() async {
  /// The following code produces a stream that outputs an integer every second
  /// and then stops after the tenth time.
  ///  Stream<int>.periodic(
  /// Duration(seconds: 1),
  /// (value) => value,
  /// ).take(10)

//  The folowing code produces a stream that outputs an integer every second and then stops after the tenth time. Stream<int>.periodic( Duration(seconds: 1), (value) => value, ).take(10)

  final myStream = Stream<int>.periodic(
    Duration(seconds: 2),
    (value) => value,
  ).take(10);
  await for (var data in myStream) {
    print(data);
  }
}
