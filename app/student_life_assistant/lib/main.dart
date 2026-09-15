import 'package:flutter/material.dart';

void main() {
  runApp(const StudentLifeApp());
}

class StudentLifeApp extends StatelessWidget {
  const StudentLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Life Assistant',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Life Assistant'),
        ),
        body: const Center(
          child: Text(
            'Selamat datang di Student Life Assistant!',
          ),
        ),
      ),
    );
  }
}