import 'package:flutter/material.dart';

import '../models/schedule_item.dart';

class ScheduleDetailScreen extends StatelessWidget {
  final ScheduleItem item;

  const ScheduleDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Jadwal')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Text(item.course,
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 16),
                Text('Waktu: ${item.time}'),
                Text('Ruang: ${item.room}'),
                Text('Pengampu: ${item.lecturer}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
