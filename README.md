# Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas

Repository pendamping buku ajar **Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas**.

Repository ini berisi kode program dan artefak pendukung pembelajaran. Naskah buku tidak disimpan di repository ini.

## Running Project

Buku menggunakan **Student Life Assistant** sebagai *running project* yang berkembang secara bertahap dari satu bab ke bab berikutnya.

Lokasi project utama:

`app/student_life_assistant/`

Perkembangannya dimulai dari aplikasi Flutter sederhana, kemudian bertahap menuju aplikasi multi-screen, pengelolaan state dan data, integrasi layanan, fitur perangkat, hingga integrasi AI.

## Struktur Repository

```text
mobile-programming-flutter-book/
|
+-- app/
|   +-- student_life_assistant/
|
+-- examples/
|   +-- bab02_dart_logic/
|   +-- bab03_student_profile/
|
+-- .gitignore
+-- README.md
```

Keterangan:

- `app/` berisi **Student Life Assistant** sebagai running project utama yang terus dikembangkan sepanjang buku.
- `examples/` berisi contoh atau praktik terarah yang mendukung pembelajaran pada bab tertentu.
- `.gitignore` mencegah file hasil build, cache, dan artefak lokal masuk ke repository.
- `README.md` mendokumentasikan struktur, status, dan checkpoint pengembangan companion repository.

---

## Status Pengembangan

### Bab 1 — Memasuki Dunia Mobile Programming

**Status: Completed & Locked**

Bab 1 membangun fondasi awal pengembangan aplikasi mobile dengan Flutter.

Milestone:

- mengenal ekosistem mobile programming;
- menyiapkan Flutter dan lingkungan pengembangan;
- membuat project Flutter;
- menjalankan aplikasi Flutter pertama;
- menyiapkan Git sebagai bagian dari workflow pengembangan; dan
- menginisialisasi **Student Life Assistant** sebagai running project buku.

Running project pada tahap ini masih berupa aplikasi Flutter sederhana yang menjadi baseline pengembangan bab-bab berikutnya.

---

### Bab 2 — Dart sebagai Fondasi Logika Aplikasi

**Status: Validated & Locked**

Bab 2 membangun fondasi logika aplikasi menggunakan Dart.

Fokus implementasi:

- tipe data dan variabel;
- null safety;
- kondisi dan perulangan;
- collections;
- fungsi;
- class dan object;
- model `Task`;
- pengolahan daftar kegiatan; dan
- logika rekomendasi kegiatan sederhana.

Contoh kode:

`examples/bab02_dart_logic/`

File utama:

```text
examples/bab02_dart_logic/
+-- main.dart
+-- task.dart
```

Checkpoint:

`bab02-v1.0`

Contoh dapat dijalankan dengan:

```bash
dart run examples/bab02_dart_logic/main.dart
```

Contoh output:

```text
Pending tasks: 2

Recommendation:
Kerjakan "Tugas Mobile Programming" terlebih dahulu.
```

---

### Bab 3 — Membangun Antarmuka dengan Flutter

**Status: Content Locked — Verified**

Bab 3 membawa konsep dan logika aplikasi menuju antarmuka Flutter yang terstruktur dan interaktif.

Fokus implementasi:

- widget;
- widget tree;
- Material UI;
- layout;
- `Row` dan `Column`;
- komponen informasi;
- input pengguna;
- callback sederhana;
- styling;
- composition; dan
- reusable widget.

#### Praktik Terarah — Student Profile

Lokasi:

`examples/bab03_student_profile/`

Struktur utama:

```text
examples/bab03_student_profile/
+-- lib/
|   +-- main.dart
+-- analysis_options.yaml
+-- pubspec.yaml
+-- pubspec.lock
```

Praktik **Student Profile** telah melalui:

- `flutter pub get`;
- `dart format`;
- `flutter analyze`;
- runtime test pada Chrome.

Hasil static analysis:

```text
No issues found!
```

#### Running Project — Milestone Bab 3

Lokasi:

`app/student_life_assistant/`

Pada akhir Bab 3, Student Life Assistant telah berkembang menjadi halaman utama berbasis Material UI dengan tiga feature card:

- **Tugas**
- **Jadwal**
- **Profil**

Antarmuka menggunakan reusable widget:

`AssistantFeature`

Implementasi running project telah melalui:

- dependency resolution;
- formatting;
- static analysis; dan
- runtime verification pada Chrome.

Hasil static analysis:

```text
No issues found!
```

Milestone ini menjadi baseline pengembangan aplikasi multi-screen pada Bab 4.

---

### Bab 4 — Dari Satu Layar Menuju Aplikasi

**Status: In Progress**

Bab 4 mengembangkan Student Life Assistant dari aplikasi satu layar menuju aplikasi multi-screen.

Fokus pengembangan:

- responsive UI;
- adaptive UI;
- multi-screen application;
- navigation;
- routing;
- passing data antarhalaman; dan
- screen flow.

Feature card **Tugas**, **Jadwal**, dan **Profil** yang dibangun pada Bab 3 menjadi titik awal pengembangan navigasi dan struktur multi-screen.

Materi state management sistematis belum menjadi fokus pada tahap ini karena dibahas pada Bab 5.

---

### Bab 5 — State, Async, dan Local Data

**Status: Planned**

Bab 5 direncanakan mengembangkan aplikasi dengan pengelolaan state, proses asynchronous, dan penyimpanan data lokal.

---

### Bab 6 — REST API dan JSON

**Status: Planned**

Bab 6 direncanakan menghubungkan aplikasi dengan layanan eksternal melalui REST API, JSON, dan service layer.

---

### Bab 7 — Cloud dan Authentication

**Status: Planned**

Bab 7 direncanakan membawa aplikasi menuju layanan backend/cloud dan mekanisme autentikasi pengguna.

---

### Bab 8 — Integrasi Fitur Perangkat

**Status: Planned**

Bab 8 direncanakan mengeksplorasi pemanfaatan kemampuan perangkat mobile dan integrasinya dengan aplikasi Flutter.

---

### Bab 9 — Integrasi Artificial Intelligence

**Status: Planned**

Bab 9 direncanakan memperkenalkan integrasi fitur Artificial Intelligence ke dalam aplikasi mobile secara bertanggung jawab.

---

### Bab 10 — Dari Project Menjadi Produk

**Status: Planned**

Bab 10 menjadi tahap integrasi dan finalisasi Student Life Assistant sebagai produk aplikasi mobile.

Fokus meliputi integrasi fitur, testing, dokumentasi, evaluasi, dan demonstrasi aplikasi.

---

## Version Checkpoints

| Bab | Checkpoint | Status |
|---|---|---|
| Bab 1 | Initial Flutter Project | Completed & Locked |
| Bab 2 | `bab02-v1.0` | Validated & Locked |
| Bab 3 | Flutter UI Milestone | Content Locked — Verified |
| Bab 4 | Responsive UI & Navigation | In Progress |
| Bab 5 | State, Async & Local Data | Planned |
| Bab 6 | REST API & JSON | Planned |
| Bab 7 | Cloud & Authentication | Planned |
| Bab 8 | Device Integration | Planned |
| Bab 9 | AI Integration | Planned |
| Bab 10 | Integration, Testing & Final Product | Planned |

---

## Menjalankan Running Project

Pastikan Flutter telah terpasang dan dapat dipanggil dari terminal.

Masuk ke direktori running project:

```bash
cd app/student_life_assistant
```

Ambil dependency:

```bash
flutter pub get
```

Periksa format kode:

```bash
dart format lib
```

Lakukan static analysis:

```bash
flutter analyze
```

Jalankan aplikasi:

```bash
flutter run
```

Untuk menjalankan pada Chrome:

```bash
flutter run -d chrome
```

---

## Menjalankan Contoh Bab

Contoh atau praktik terarah disimpan pada direktori:

`examples/`

Contoh Dart Bab 2:

```bash
dart run examples/bab02_dart_logic/main.dart
```

Untuk contoh Flutter, masuk terlebih dahulu ke direktori contoh yang bersangkutan, kemudian jalankan dependency resolution dan static analysis.

Contoh Bab 3:

```bash
cd examples/bab03_student_profile
flutter pub get
flutter analyze
```

Folder contoh dapat dibuat minimal agar repository tetap ringkas. Platform-specific project files tidak harus disimpan pada setiap contoh apabila contoh tersebut ditujukan terutama sebagai kode pendamping pembelajaran.

---

## Prinsip Pengembangan Repository

Companion repository mengikuti beberapa prinsip:

1. **Satu running project utama**  
   Student Life Assistant berkembang secara incremental sepanjang buku.

2. **Contoh dipisahkan dari running project**  
   Contoh atau praktik khusus bab ditempatkan pada `examples/`.

3. **Tidak menduplikasi running project per bab**  
   Perkembangan Student Life Assistant dilacak melalui Git dan checkpoint.

4. **Repository tetap bersih**  
   Build output, cache, `.dart_tool`, dan artefak lokal tidak disimpan dalam Git.

5. **Kode harus dapat diverifikasi**  
   Milestone kode diperiksa melalui formatting, static analysis, dan runtime test sesuai kebutuhan.

6. **Batas materi antar-bab dijaga**  
   Implementasi pada suatu bab tidak mengambil konsep utama yang baru dibahas pada bab berikutnya.

---

## Hubungan dengan Buku

Repository ini merupakan **companion repository**, bukan tempat penyimpanan naskah buku.

Naskah buku dikelola secara terpisah dalam dokumen per bab.

Repository berfungsi untuk menyediakan:

- source code;
- contoh program;
- praktik terarah;
- running project;
- checkpoint implementasi; dan
- artefak pendukung eksekusi yang diperlukan pembaca.

Setiap milestone digunakan untuk menjaga keterlacakan perkembangan **Student Life Assistant** dari satu tahap pembelajaran menuju tahap berikutnya.

---

## Repository

**Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas**

Companion repository untuk pembelajaran Mobile Programming berbasis Flutter dan pengembangan incremental **Student Life Assistant**.