import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:http/http.dart' as http;

Future<void> main() async {
  // try {
  //   final url = 'https://jsonplaceholder.typicode.com/todos/1';
  //   final parsedUrl = Uri.parse(url);
  //   final response = await http.get(parsedUrl);
  //   final statuscode = response.statusCode;

  //   if (statuscode == 200) {
  //     final rawJSonString = response.body;
  //     final jsonMap = jsonDecode(rawJSonString);
  //     final todo = Todo.fromJson(jsonMap);
  //     print(todo);
  //   }
  // } on SocketException catch (error) {
  //   print(error);
  // } on HttpException catch (error) {
  //   print(error);
  // } on FormatException catch (error) {
  //   print(error);
  // }

  // readingString();
  transformingAStream();

  print('ok, I\'m counting.....');
  // print(await playHideAndSeekTheLongVersion());
}

/// Asynchronous network request.

class Todo {
  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'Completed: $completed';
  }
}

// Streams

Future<void> readingString() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();

  // Cancelling a stream.
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    onError: (error) {
      print('error $error ');
    },
    onDone: () => print('All finished'),
    cancelOnError: true,
  );
  // Using an asynchronous for loop
  // await for (var data in stream) {
  //   print(data.length);
  // }

// Handling errors using the try-catch block

  // try {
  //   final file = File('assets/text_long.txt');
  //   final stream = file.openRead();
  //   await for (var data in stream) {
  //     print(data.length);
  //   }
  // } on Exception catch (error) {
  //   print(error);
  // } finally {
  //   print('All finished');
  // }
}

Future<void> transformingAStream() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }
}

// Isolate

Future<void> spawningIsolate() async {
  final recievePort = ReceivePort();

  final isolate = Isolate.spawn(
    playHideAndSeekTheLongVersion,
    recievePort.sendPort,
  );

  recievePort.listen((message) {
    print(message);
    recievePort.close();
  });
}

void playHideAndSeekTheLongVersion(SendPort sendPort) {
  var counting = 0;
  for (var i = 1; i <= 10000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, here I come!');
}
