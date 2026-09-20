import 'package:flutter/material.dart';

import '../models/user_preferences.dart';
import '../repositories/local_preferences_repository.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _repository = LocalPreferencesRepository();
  final _nameController = TextEditingController();

  UserPreferences _preferences = const UserPreferences.defaults();
  bool _isLoading = true;
  bool _isSaving = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _loadPreferences() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final loaded = await _repository.load();
      if (!mounted) return;
      setState(() {
        _preferences = loaded;
        _nameController.text = loaded.displayName;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = 'Preferensi lokal belum dapat dibaca.';
      });
    }
  }

  Future<void> _savePreferences() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) {
      setState(() => _errorMessage = 'Nama tampilan tidak boleh kosong.');
      return;
    }

    final updated = _preferences.copyWith(displayName: name);
    setState(() {
      _isSaving = true;
      _errorMessage = null;
    });

    try {
      await _repository.save(updated);
      if (!mounted) return;
      setState(() {
        _preferences = updated;
        _isSaving = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Preferensi tersimpan di perangkat.')),
      );
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _isSaving = false;
        _errorMessage = 'Preferensi gagal disimpan. Coba lagi.';
      });
    }
  }

  Future<void> _setShowCompleted(bool value) async {
    final previous = _preferences;
    final updated = previous.copyWith(showCompletedTasks: value);
    setState(() => _preferences = updated);

    try {
      await _repository.save(updated);
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _preferences = previous;
        _errorMessage = 'Perubahan belum dapat disimpan.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      children: [
                        const CircleAvatar(
                          radius: 38,
                          child: Icon(Icons.person, size: 42),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Nama tampilan',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text('Tampilkan tugas selesai'),
                          subtitle: const Text(
                            'Contoh state yang langsung tercermin pada UI.',
                          ),
                          value: _preferences.showCompletedTasks,
                          onChanged: _isSaving ? null : _setShowCompleted,
                        ),
                        if (_errorMessage != null) ...[
                          const SizedBox(height: 8),
                          Text(
                            _errorMessage!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ],
                        const SizedBox(height: 16),
                        FilledButton.icon(
                          onPressed: _isSaving ? null : _savePreferences,
                          icon: _isSaving
                              ? const SizedBox.square(
                                  dimension: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(Icons.save),
                          label: Text(_isSaving ? 'Menyimpan...' : 'Simpan'),
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton.icon(
                          onPressed: _isSaving ? null : _loadPreferences,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Muat ulang data lokal'),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
