import 'dart:convert';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:http/http.dart' as http;

Future<void> main() async {
  // challange1();
  // challange2();
  // await challange3();
  await challenge4();
}

/// Challenge 1:
///
/// This is a fun one and will test how well you understand how Dart handles
/// asynchronous tasks. In what order will Dart print the text with the
/// following `print` statements? Why?

void challange1() {
  print('1 synchronous'); //1st
  Future(() => print('2 event queue')).then(
    //5th
    (value) => print('3 synchronous'), // 6th
  );
  Future.microtask(() => print('4 microtask queue')); //3rd
  Future.microtask(() => print('5 microtask queue')); // 4th
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'), // last
  );
  Future(() => print('7 event Queue')).then(
    // 7th
    (value) => Future(() => print('8 event queue')), // 10th
  );
  Future(() => print('9 event queue')).then(
    // 8th
    (value) => Future.microtask(
      () => print('10 microtask queue'), //9th
    ),
  );

  print('11 synchronous'); // 2nd

  /// Answer:
  ///
  /// 1 synchronous
  /// 11 synchronous
  /// 4 microtask queue
  /// 5 microtask queue
  /// 2 event queue
  /// 3 synchronous
  /// 7 event queue
  /// 9 event queue
  /// 10 microtask queue
  /// 8 event queue
  /// 6 event queue
  ///
  /// Synchronous tasks always run first so that explains 1 and 11. Here is
  /// what the event queue and the microtask queue look like after 11 is finished:
  ///
  /// Event queue: 2, 7, 9
  /// Microtask queue: 4, 5
  /// (Numbers on the left indicate first in line.)
  ///
  /// The microtask queue is always emptied before anything in the event queue
  /// gets a chance, so that explains 4 and 5.
  ///
  /// After that 2 gets its turn as first in the event queue. Anything in the
  /// `then` callback gets run synchronously immediately after the event queue
  /// item so that examplains 3.
  ///
  /// 7 is next in the event queue but when it finishes the `then` callback adds
  /// 8 to the end of the event queue. Here is what the queues look like now:
  ///
  /// Event queue: 9, 8
  /// Microtask queue:
  ///
  /// Next in line is 9 and when it finishes it adds 10 to the microtask queue:
  ///
  /// Event queue: 8
  /// Microtask queue: 10
  ///
  /// Since microtasks take priority it cuts the line in front of 8. After that
  /// 8 can go.
  ///
  /// At the end of the one second delay, 6 gets put in the event queue, and since
  /// there is no one else in any line, 6 gets run.
  ///
  /// There is no more synchronous code, all the queues are empty, and all the
  /// futures have completed, so the program terminates.
}

/// Challenge 2: Care to make a comment?
///
/// The following link returns a JSON list of comments:
///
/// https://jsonplaceholder.typicode.com/comments
///
/// Create a `Comment` data class and convert the raw JSON to a Dart list of
/// type `List<Comment>`.

Future<void> challange2() async {
  final commentList = <Comment>[];
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonList = jsonDecode(rawJsonString);
      for (var element in jsonList) {
        final comment = Comment.fromJson(element);
        commentList.add(comment);
        print(commentList);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on HttpException catch (error) {
    print(error);
  } on SocketException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
  print('comment list length: ${commentList.length}');
}

class Comment {
  factory Comment.fromJson(Map<String, Object?> jsonMap) {
    return Comment(
      postId: jsonMap['postId'] as int,
      id: jsonMap['id'] as int,
      body: jsonMap['body'] as String,
      email: jsonMap['email'] as String,
      name: jsonMap['name'] as String,
    );
  }

  Comment({
    required this.name,
    required this.id,
    required this.email,
    required this.postId,
    required this.body,
  });

  final int id;
  final String name;
  final String email;
  final int postId;
  final String body;

  @override
  String toString() {
    return '"postId:" $postId\n\n'
        ' '
        '"id:" $id\n'
        ' '
        '"name:" "$name"\n'
        ' '
        '"email:" "$email"\n'
        ' '
        '"body:" "$body"\n';
  }
}

// Challenge 3: Data stream
///
/// The following code allows you to stream content from the given URL:
///
/// ```
/// final url = Uri.parse('https://raywenderlich.com');
/// final client = http.Client();
/// final request = http.Request('GET', url);
/// final response = await client.send(request);
/// final stream = response.stream;
/// ```
///
/// Your challenge is to transform the stream from bytes to strings
/// and see how many bytes each data chunk is. Add error handling,
/// and when the stream is finished, close the client.

Future<void> challange3() async {
  final url = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } catch (error) {
    print(error);
  } finally {
    client.close();
  }
}

/// Challenge 4: Fibonacci from afar
///
/// In Challenge 4 of Chapter 4, you wrote some code to calculate the *n*th
/// Fibonacci number. Now repeat that challenge but run the code in a separate
/// isolate. Pass the value of _n_ to the new isolate as an argument, and send
/// the result back to the main isolate.

Future<void> challenge4() async {
  final receivePort = ReceivePort();
  final n = 10;
  final arguments = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };

  final isolate = await Isolate.spawn(
    fibonacci,
    arguments,
  );

  receivePort.listen((message) {
    print('Fibonacci number $n is $message.');
    receivePort.close();
    isolate.kill();
  });
}

void fibonacci(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final n = arguments['n'] as int;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}
