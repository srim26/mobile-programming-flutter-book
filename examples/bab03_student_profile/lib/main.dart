import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(useMaterial3: true),
      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({super.key});

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
  final nameController = TextEditingController();
  final nimController = TextEditingController();
  final studyProgramController = TextEditingController();

  String savedName = 'Nama Mahasiswa';
  String savedNim = '-';
  String savedStudyProgram = 'Program Studi';

  void saveProfile() {
    setState(() {
      savedName = nameController.text.trim();
      savedNim = nimController.text.trim();
      savedStudyProgram = studyProgramController.text.trim();
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    nimController.dispose();
    studyProgramController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(radius: 44, child: Icon(Icons.person, size: 48)),
            const SizedBox(height: 16),
            Card(
              child: Column(
                children: [
                  ProfileInfo(icon: Icons.person_outline, label: 'Nama', value: savedName.isEmpty ? '-' : savedName),
                  ProfileInfo(icon: Icons.badge_outlined, label: 'NIM', value: savedNim.isEmpty ? '-' : savedNim),
                  ProfileInfo(icon: Icons.school_outlined, label: 'Program Studi', value: savedStudyProgram.isEmpty ? '-' : savedStudyProgram),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Nama', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            TextField(controller: nimController, decoration: const InputDecoration(labelText: 'NIM', border: OutlineInputBorder())),
            const SizedBox(height: 12),
            TextField(controller: studyProgramController, decoration: const InputDecoration(labelText: 'Program Studi', border: OutlineInputBorder())),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: saveProfile, child: const Text('Simpan')),
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key, required this.icon, required this.label, required this.value});
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(icon), title: Text(label), subtitle: Text(value));
  }
}
