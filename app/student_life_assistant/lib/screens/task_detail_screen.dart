import 'package:flutter/material.dart';

import '../models/task_item.dart';

class TaskDetailScreen extends StatelessWidget {
  final TaskItem item;

  const TaskDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Tugas')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title,
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 12),
                  Text(item.course),
                  Text('Batas: ${item.deadline}'),
                  const SizedBox(height: 20),
                  Text(item.description),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
