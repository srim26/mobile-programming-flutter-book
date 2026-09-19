import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../models/schedule_item.dart';
import 'schedule_detail_screen.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  void _openDetail(BuildContext context, ScheduleItem item) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ScheduleDetailScreen(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jadwal')),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: sampleSchedules.length,
          itemBuilder: (context, index) {
            final item = sampleSchedules[index];
            return Card(
              child: ListTile(
                title: Text(item.course),
                subtitle: Text('${item.time} • ${item.room}'),
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
