import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/external_todo.dart';

class ExternalTodoService {
  ExternalTodoService({http.Client? client})
    : _client = client ?? http.Client();

  final http.Client _client;

  static final Uri _todosUri = Uri.https(
    'jsonplaceholder.typicode.com',
    '/todos',
  );

  Future<List<ExternalTodo>> fetchTodos() async {
    final response = await _client.get(
      _todosUri,
      headers: const {'Accept': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw Exception('Gagal mengambil data. Status: ${response.statusCode}');
    }

    final decoded = jsonDecode(response.body);

    if (decoded is! List) {
      throw const FormatException(
        'Format data tidak sesuai dengan yang diharapkan.',
      );
    }

    return decoded
        .take(10)
        .map((item) => ExternalTodo.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  void dispose() {
    _client.close();
  }
}
