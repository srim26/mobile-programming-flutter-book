import 'package:flutter/material.dart';

void main() {
  runApp(const StudentLifeAssistantApp());
}

class StudentLifeAssistantApp extends StatelessWidget {
  const StudentLifeAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Life Assistant',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Life Assistant')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Halo, Mahasiswa!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Kelola aktivitas perkuliahanmu dalam satu aplikasi.'),
          SizedBox(height: 24),
          AssistantFeature(
            icon: Icons.assignment_outlined,
            title: 'Tugas',
            description: 'Pantau tugas dan aktivitas akademik.',
          ),
          SizedBox(height: 12),
          AssistantFeature(
            icon: Icons.calendar_month_outlined,
            title: 'Jadwal',
            description: 'Lihat jadwal kuliah dan agenda harian.',
          ),
          SizedBox(height: 12),
          AssistantFeature(
            icon: Icons.person_outline,
            title: 'Profil',
            description: 'Kelola informasi profil mahasiswa.',
          ),
        ],
      ),
    );
  }
}

class AssistantFeature extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const AssistantFeature({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 36, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
