import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../models/task_item.dart';
import 'task_detail_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final Set<String> _completedTitles = <String>{};

  void _openDetail(BuildContext context, TaskItem item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => TaskDetailScreen(item: item),
      ),
    );
  }

  void _toggleCompleted(TaskItem item, bool value) {
    setState(() {
      if (value) {
        _completedTitles.add(item.title);
      } else {
        _completedTitles.remove(item.title);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final completed = _completedTitles.length;
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas')),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: sampleTasks.length + 1,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            if (index == 0) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.insights),
                  title: Text('$completed dari ${sampleTasks.length} tugas selesai'),
                  subtitle: const Text(
                    'Centang tugas untuk melihat UI bereaksi terhadap state.',
                  ),
                ),
              );
            }

            final item = sampleTasks[index - 1];
            final isCompleted = _completedTitles.contains(item.title);
            return Card(
              child: CheckboxListTile(
                value: isCompleted,
                onChanged: (value) => _toggleCompleted(item, value ?? false),
                title: Text(
                  item.title,
                  style: TextStyle(
                    decoration: isCompleted ? TextDecoration.lineThrough : null,
                  ),
                ),
                subtitle: Text('${item.course} • ${item.deadline}'),
                secondary: IconButton(
                  tooltip: 'Lihat detail',
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () => _openDetail(context, item),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            );
          },
        ),
      ),
    );
  }
}
