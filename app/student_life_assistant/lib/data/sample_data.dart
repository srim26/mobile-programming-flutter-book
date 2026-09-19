import '../models/schedule_item.dart';
import '../models/task_item.dart';

const sampleTasks = <TaskItem>[
  TaskItem(
    title: 'Refactor dashboard',
    course: 'Mobile Programming',
    deadline: 'Jumat, 20.00',
    description: 'Ubah dashboard agar usable pada ruang compact dan wide.',
  ),
  TaskItem(
    title: 'Review normalisasi',
    course: 'Basis Data',
    deadline: 'Senin, 09.00',
    description: 'Pelajari kembali bentuk normal dan contoh dependensi.',
  ),
];

const sampleSchedules = <ScheduleItem>[
  ScheduleItem(
    course: 'Mobile Programming',
    time: '08.00–09.40',
    room: 'Lab Komputasi',
    lecturer: 'Dosen Pengampu',
  ),
  ScheduleItem(
    course: 'Basis Data',
    time: '10.00–11.40',
    room: 'Ruang 302',
    lecturer: 'Dosen Pengampu',
  ),
];
