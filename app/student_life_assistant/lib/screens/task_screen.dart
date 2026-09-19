import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../models/task_item.dart';
import 'task_detail_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  void _openDetail(BuildContext context, TaskItem item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => TaskDetailScreen(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas')),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: sampleTasks.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final item = sampleTasks[index];
            return Card(
              child: ListTile(
                title: Text(item.title),
                subtitle: Text('${item.course} • ${item.deadline}'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _openDetail(context, item),
              ),
            );
          },
        ),
      ),
    );
  }
}
