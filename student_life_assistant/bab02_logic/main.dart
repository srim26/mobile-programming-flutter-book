import 'task.dart';

void showTasks(List<Task> tasks) {
  for (final task in tasks) {
    String status;

    if (task.isDone) {
      status = 'SELESAI';
    } else {
      status = 'BELUM SELESAI';
    }

    print('${task.title} [${task.priority}]');
    print('Deadline : ${task.remainingDays} hari');
    print('Status   : $status');
    print('Lokasi   : ${task.location ?? "Belum ditentukan"}');
    print('');
  }
}

int countPendingTasks(List<Task> tasks) {
  int count = 0;

  for (final task in tasks) {
    if (!task.isDone) {
      count++;
    }
  }

  return count;
}

String getRecommendation(List<Task> tasks) {
  for (final task in tasks) {
    if (task.needsAttention()) {
      return 'Kerjakan "${task.title}" terlebih dahulu.';
    }
  }

  return 'Tidak ada kegiatan mendesak saat ini.';
}

void main() {
  final tasks = <Task>[
    Task(
      title: 'Tugas Mobile Programming',
      priority: 'high',
      remainingDays: 1,
      isDone: false,
      location: 'Laboratorium Komputer',
    ),
    Task(
      title: 'Belajar Dart',
      priority: 'medium',
      remainingDays: 3,
      isDone: true,
    ),
    Task(
      title: 'Rapat Kelompok',
      priority: 'medium',
      remainingDays: 1,
      isDone: false,
      location: 'Perpustakaan',
    ),
  ];

  print('=== STUDENT LIFE ASSISTANT ===');
  print('');
  print("Today's Tasks");
  print('');
  showTasks(tasks);

  final pending = countPendingTasks(tasks);

  print('Pending tasks: $pending');
  print('');
  print('Recommendation:');
  print(getRecommendation(tasks));
}
