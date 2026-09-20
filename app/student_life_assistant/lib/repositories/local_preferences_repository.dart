import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_preferences.dart';

class LocalPreferencesRepository {
  static const _displayNameKey = 'profile.display_name';
  static const _showCompletedTasksKey = 'tasks.show_completed';

  final SharedPreferencesAsync _preferences;

  LocalPreferencesRepository({SharedPreferencesAsync? preferences})
      : _preferences = preferences ?? SharedPreferencesAsync();

  Future<UserPreferences> load() async {
    final displayName = await _preferences.getString(_displayNameKey);
    final showCompleted =
        await _preferences.getBool(_showCompletedTasksKey);

    return UserPreferences(
      displayName: displayName?.trim().isNotEmpty == true
          ? displayName!.trim()
          : const UserPreferences.defaults().displayName,
      showCompletedTasks: showCompleted ?? true,
    );
  }

  Future<void> save(UserPreferences value) async {
    await _preferences.setString(_displayNameKey, value.displayName.trim());
    await _preferences.setBool(
      _showCompletedTasksKey,
      value.showCompletedTasks,
    );
  }
}
