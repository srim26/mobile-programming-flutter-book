import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ResponsiveDemo()));

class ResponsiveDemo extends StatelessWidget {
  const ResponsiveDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Demo')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final wide = constraints.maxWidth >= 700;
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: wide
                      ? const Row(
                          children: [
                            Expanded(child: _Panel(label: 'Tugas')),
                            SizedBox(width: 12),
                            Expanded(child: _Panel(label: 'Jadwal')),
                          ],
                        )
                      : const Column(
                          children: [
                            _Panel(label: 'Tugas'),
                            SizedBox(height: 12),
                            _Panel(label: 'Jadwal'),
                          ],
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

class _Panel extends StatelessWidget {
  final String label;

  const _Panel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 160,
        child: Center(child: Text(label)),
      ),
    );
  }
}
