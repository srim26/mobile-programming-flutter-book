import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const PersistenceDemoApp());

class PersistenceDemoApp extends StatelessWidget {
  const PersistenceDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PersistenceDemoScreen());
  }
}

class PersistenceDemoScreen extends StatefulWidget {
  const PersistenceDemoScreen({super.key});

  @override
  State<PersistenceDemoScreen> createState() => _PersistenceDemoScreenState();
}

class _PersistenceDemoScreenState extends State<PersistenceDemoScreen> {
  static const _key = 'bab05.student_name';
  final _prefs = SharedPreferencesAsync();
  final _controller = TextEditingController();
  bool _loading = true;
  bool _saving = false;
  String? _message;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _message = null;
    });
    try {
      _controller.text = await _prefs.getString(_key) ?? '';
      if (!mounted) return;
      setState(() => _loading = false);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _message = 'Data gagal dimuat.';
      });
    }
  }

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _message = null;
    });
    try {
      await _prefs.setString(_key, _controller.text.trim());
      if (!mounted) return;
      setState(() {
        _saving = false;
        _message = 'Data tersimpan.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _message = 'Data gagal disimpan.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bab 5 — Local Persistence')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: _loading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Nama mahasiswa',
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _saving ? null : _save,
                    child: Text(_saving ? 'Menyimpan...' : 'Simpan lokal'),
                  ),
                  if (_message != null) ...[
                    const SizedBox(height: 12),
                    Text(_message!),
                  ],
                ],
              ),
      ),
    );
  }
}
