import 'package:flutter/material.dart';

import 'profile_screen.dart';
import 'schedule_screen.dart';
import 'task_screen.dart';
import '../widgets/feature_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _open(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Life Assistant')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 700;
            final cards = [
              FeatureCard(
                icon: Icons.task_alt,
                title: 'Tugas',
                subtitle: 'Lihat tugas dan detail pekerjaan.',
                onTap: () => _open(context, const TaskScreen()),
              ),
              FeatureCard(
                icon: Icons.calendar_month,
                title: 'Jadwal',
                subtitle: 'Lihat jadwal kuliah dan ruang.',
                onTap: () => _open(context, const ScheduleScreen()),
              ),
              FeatureCard(
                icon: Icons.person,
                title: 'Profil',
                subtitle: 'Lihat identitas mahasiswa.',
                onTap: () => _open(context, const ProfileScreen()),
              ),
            ];

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: EdgeInsets.all(isWide ? 32 : 16),
                  child: isWide
                      ? GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 1.15,
                          children: cards,
                        )
                      : ListView.separated(
                          itemCount: cards.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: 12),
                          itemBuilder: (_, index) => cards[index],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
