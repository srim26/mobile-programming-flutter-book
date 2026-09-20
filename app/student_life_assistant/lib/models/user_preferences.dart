class UserPreferences {
  final String displayName;
  final bool showCompletedTasks;

  const UserPreferences({
    required this.displayName,
    required this.showCompletedTasks,
  });

  const UserPreferences.defaults()
      : displayName = 'Mahasiswa Teknik Informatika',
        showCompletedTasks = true;

  UserPreferences copyWith({
    String? displayName,
    bool? showCompletedTasks,
  }) {
    return UserPreferences(
      displayName: displayName ?? this.displayName,
      showCompletedTasks: showCompletedTasks ?? this.showCompletedTasks,
    );
  }
}
