# Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas

Repository pendamping buku ajar **Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas**.

Repository ini mendokumentasikan pengembangan **Student Life Assistant** sebagai *running project* yang berkembang secara bertahap seiring pembahasan dalam buku.

## Running Project

**Student Life Assistant** digunakan untuk menghubungkan konsep, kode, praktik, dan hasil belajar pada setiap bab.

Aplikasi dikembangkan secara incremental: dimulai dari fondasi Flutter dan Dart, kemudian berkembang menuju aplikasi mobile yang interaktif dan cerdas.

## Struktur Repository

```text
mobile-programming-flutter-book/
├── student_life_assistant/
│   ├── lib/
│   │   └── main.dart
│   ├── bab02_logic/
│   │   ├── main.dart
│   │   └── task.dart
│   ├── pubspec.yaml
│   └── ...
└── README.md

## Status Pengembangan

### Bab 1 — Fondasi Awal Student Life Assistant

**Status: Completed & Locked**

- Inisialisasi project Flutter.
- Menyiapkan **Student Life Assistant** sebagai running project.
- Verifikasi aplikasi Flutter pertama.
- Menetapkan struktur awal repository.

### Bab 2 — Dart sebagai Fondasi Logika Aplikasi

**Status: Golden Chapter v1.0 — Validated & Locked**

Student Life Assistant berkembang menjadi **v0.2 — Logic Engine**.

Implementasi mencakup:

- tipe data dan variabel;
- null safety;
- kondisi dan perulangan;
- collections;
- fungsi;
- class dan object;
- model `Task`;
- perhitungan kegiatan yang belum selesai; dan
- logika rekomendasi kegiatan.

Kode checkpoint:

`student_life_assistant/bab02_logic/`

Tag repository:

`bab02-v1.0`

Program dapat dijalankan dengan:

```bash
dart run student_life_assistant/bab02_logic/main.dart
```

Output utama yang diharapkan:

```text
Pending tasks: 2

Recommendation:
Kerjakan "Tugas Mobile Programming" terlebih dahulu.
```

### Bab 3

**Status: Belum dimulai**

Pengembangan berikutnya akan melanjutkan Student Life Assistant sesuai capaian pembelajaran dan blueprint Bab 3.

## Version Checkpoints

| Bab | Checkpoint | Status |
|---|---|---|
| Bab 1 | Initial Flutter project | Completed |
| Bab 2 | `bab02-v1.0` | Validated & Locked |
| Bab 3 | — | Belum dimulai |

## Catatan

Repository ini merupakan repository pendamping buku ajar. Setiap checkpoint digunakan untuk menjaga keterlacakan perkembangan running project dari satu tahap pembelajaran ke tahap berikutnya.