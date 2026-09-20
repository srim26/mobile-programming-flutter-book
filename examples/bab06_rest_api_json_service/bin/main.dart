import 'dart:convert';

import 'package:http/http.dart' as http;

class ExternalTodo {
  const ExternalTodo({
    required this.id,
    required this.title,
    required this.completed,
  });

  final int id;
  final String title;
  final bool completed;

  factory ExternalTodo.fromJson(Map<String, dynamic> json) {
    return ExternalTodo(
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }
}

class ExternalTodoService {
  Future<List<ExternalTodo>> fetchTodos() async {
    final uri = Uri.https('jsonplaceholder.typicode.com', '/todos');

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    }

    final decoded = jsonDecode(response.body);

    if (decoded is! List) {
      throw const FormatException('Response bukan JSON List.');
    }

    return decoded
        .take(5)
        .map((item) => ExternalTodo.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}

Future<void> main() async {
  final service = ExternalTodoService();

  print('Mengambil data dari REST API...');

  try {
    final todos = await service.fetchTodos();

    for (final todo in todos) {
      final status = todo.completed ? 'Done' : 'Open';
      print('${todo.id}. ${todo.title} [$status]');
    }
  } catch (error) {
    print('Gagal mengambil data: $error');
  }
}
