import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statuscode = response.statusCode;

    if (statuscode == 200) {
      final rawJSonString = response.body;
      final jsonMap = jsonDecode(rawJSonString);
      final todo = Todo.fromJson(jsonMap);
      print(todo);
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
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
