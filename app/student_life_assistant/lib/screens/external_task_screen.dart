import 'package:flutter/material.dart';

import '../models/external_todo.dart';
import '../services/external_todo_service.dart';

class ExternalTaskScreen extends StatefulWidget {
  const ExternalTaskScreen({super.key});

  @override
  State<ExternalTaskScreen> createState() => _ExternalTaskScreenState();
}

class _ExternalTaskScreenState extends State<ExternalTaskScreen> {
  final ExternalTodoService _service = ExternalTodoService();

  List<ExternalTodo> _todos = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadTodos();
  }

  Future<void> _loadTodos() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final todos = await _service.fetchTodos();

      if (!mounted) return;

      setState(() {
        _todos = todos;
      });
    } catch (_) {
      if (!mounted) return;

      setState(() {
        _errorMessage =
            'Data eksternal belum dapat dimuat. Periksa koneksi dan coba lagi.';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _service.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('External Task Feed')),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.cloud_off_outlined, size: 48),
              const SizedBox(height: 16),
              Text(_errorMessage!, textAlign: TextAlign.center),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: _loadTodos,
                icon: const Icon(Icons.refresh),
                label: const Text('Coba Lagi'),
              ),
            ],
          ),
        ),
      );
    }

    if (_todos.isEmpty) {
      return const Center(child: Text('Belum ada data eksternal.'));
    }

    return RefreshIndicator(
      onRefresh: _loadTodos,
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        itemCount: _todos.length,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final todo = _todos[index];

          return Card(
            child: ListTile(
              leading: Icon(
                todo.completed
                    ? Icons.check_circle_outline
                    : Icons.radio_button_unchecked,
              ),
              title: Text(todo.title),
              subtitle: Text('External task #${todo.id}'),
              trailing: Text(todo.completed ? 'Done' : 'Open'),
            ),
          );
        },
      ),
    );
  }
}
