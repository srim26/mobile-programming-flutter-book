class Task {
  String title;
  String priority;
  int remainingDays;
  bool isDone;
  String? location;

  Task({
    required this.title,
    required this.priority,
    required this.remainingDays,
    required this.isDone,
    this.location,
  });

  bool needsAttention() {
    return !isDone && (priority == 'high' || remainingDays <= 1);
  }
}
