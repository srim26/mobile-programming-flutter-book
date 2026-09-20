# Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas

Repository pendamping buku ajar **Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas**.

Repository ini berisi kode program dan artefak pendukung pembelajaran. Naskah buku tidak disimpan di repository ini.

## Running Project

Buku menggunakan **Student Life Assistant** sebagai *running project* yang berkembang secara bertahap dari satu bab ke bab berikutnya.

Lokasi project utama:

`app/student_life_assistant/`

Perkembangannya dimulai dari aplikasi Flutter sederhana, kemudian bertahap menuju aplikasi multi-screen, pengelolaan state dan data, integrasi layanan eksternal, backend/cloud, fitur perangkat, hingga integrasi AI.

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
|   +-- bab04_navigation_screen_flow/
|   +-- bab04_responsive_layout/
|   +-- bab05_state_async_local_data/
|   +-- bab06_rest_api_json_service/
|
+-- BAB05_VERIFICATION.md
+-- BAB06_VERIFICATION.md
+-- .gitignore
+-- README.md
```

Keterangan:

- `app/` berisi **Student Life Assistant** sebagai running project utama yang terus dikembangkan sepanjang buku.
- `examples/` berisi contoh atau praktik terarah yang mendukung pembelajaran pada bab tertentu.
- `BABxx_VERIFICATION.md` mencatat evidence dan hasil verifikasi milestone kode pada bab yang memerlukannya.
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
- `flutter analyze`; dan
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

Antarmuka menggunakan reusable widget untuk menjaga konsistensi komponen fitur.

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

**Status: Content Locked — Code Verified**

Bab 4 mengembangkan **Student Life Assistant** dari aplikasi satu layar menuju aplikasi multi-screen yang mampu menyesuaikan ruang tampil.

Fokus implementasi:

- responsive UI;
- adaptive UI;
- multi-screen application;
- navigation;
- routing dasar;
- passing data antarhalaman; dan
- screen flow.

Feature card **Tugas**, **Jadwal**, dan **Profil** yang dibangun pada Bab 3 menjadi titik awal pengembangan navigasi dan struktur multi-screen.

Materi state management sistematis belum menjadi fokus pada tahap ini karena dibahas pada Bab 5.

#### Praktik Terarah — Responsive Layout

Lokasi:

`examples/bab04_responsive_layout/`

Praktik ini menunjukkan perubahan susunan antarmuka berdasarkan ruang layar yang tersedia.

Verifikasi:

- dependency resolution berhasil;
- `flutter analyze` — **No issues found**; dan
- runtime verification pada Chrome.

#### Praktik Terarah — Navigation & Screen Flow

Lokasi:

`examples/bab04_navigation_screen_flow/`

Praktik ini menunjukkan navigasi dasar dari daftar menuju halaman detail serta passing data ke screen tujuan.

Verifikasi:

- dependency resolution berhasil;
- `flutter analyze` — **No issues found**; dan
- runtime verification pada Chrome.

#### Running Project — Milestone Bab 4

Lokasi:

`app/student_life_assistant/`

Pada akhir Bab 4, **Student Life Assistant** telah berkembang menjadi aplikasi multi-screen dengan:

- antarmuka responsive/adaptive;
- screen **Tugas**, **Jadwal**, dan **Profil**;
- navigation dan screen flow;
- screen detail untuk Tugas dan Jadwal; dan
- passing data antarhalaman.

Implementasi running project telah melalui:

- `flutter pub get`;
- `flutter analyze` — **No issues found**;
- `flutter test` — **All tests passed**; dan
- runtime verification pada Chrome.

Checkpoint kode Bab 4 telah dipublikasikan pada branch `main` melalui commit:

`1d8e86d` — `feat(bab04): add responsive UI and multi-screen navigation`

Milestone ini menjadi baseline pengembangan **state, asynchronous programming, dan local data** pada Bab 5.

---

### Bab 5 — State, Async, dan Local Data

**Status: Content Locked — Code Verified**

Bab 5 mengembangkan **Student Life Assistant** menjadi **Stateful & Persistent App** tanpa mengambil materi REST API/HTTP/JSON Bab 6.

Fokus implementasi:

- `StatefulWidget` dan `setState()` untuk state lokal;
- UI yang bereaksi terhadap perubahan state;
- `Future`, `async`, dan `await`;
- loading dan error state;
- pemisahan model, UI, dan akses penyimpanan lokal;
- persistensi sederhana menggunakan `shared_preferences`; dan
- penggunaan `SharedPreferencesAsync` untuk operasi penyimpanan asynchronous.

#### Praktik Terarah — State, Async & Local Data

Lokasi:

`examples/bab05_state_async_local_data/`

Praktik menunjukkan alur:

```text
load
→ state
→ UI
→ edit
→ save
→ persistence
```

menggunakan data lokal sederhana.

#### Running Project — Milestone Bab 5

Lokasi:

`app/student_life_assistant/`

Perubahan incremental dari Bab 4 meliputi:

- halaman Tugas menjadi stateful dan menampilkan progres tugas selesai;
- halaman Profil memiliki loading, error, dan saving state;
- preferensi nama tampilan serta opsi pengguna disimpan secara lokal;
- `UserPreferences` memisahkan representasi data dari widget; dan
- `LocalPreferencesRepository` memisahkan akses local storage dari UI.

Dependency baru:

`shared_preferences: ^2.5.5`

Catatan: `shared_preferences` sesuai untuk data key-value sederhana dan bukan penyimpanan data kritis.

Implementasi Bab 5 telah melalui dependency resolution, formatting, static analysis, testing, dan runtime verification.

Dokumentasi verifikasi:

`BAB05_VERIFICATION.md`

Pada akhir Bab 5, **Student Life Assistant** mencapai tahap:

**Stateful & Persistent App**

Milestone ini menjadi baseline pengembangan REST API, JSON, dan service layer pada Bab 6.

---

### Bab 6 — REST API, JSON, dan Service

**Status: Content Locked — Code Verified**

Bab 6 mengembangkan **Student Life Assistant** dari **Stateful & Persistent App** menjadi **Connected Application** yang dapat mengambil dan menampilkan data dari layanan eksternal.

Fokus implementasi:

- HTTP request menggunakan package `http`;
- REST API;
- JSON decoding;
- pemetaan JSON ke model Dart;
- service layer;
- asynchronous data fetching;
- loading state;
- success state;
- empty state;
- network/error state; dan
- retry/recovery.

#### Praktik Terarah — REST API, JSON & Service

Lokasi:

`examples/bab06_rest_api_json_service/`

Praktik menunjukkan alur:

```text
REST API
→ HTTP Response
→ JSON
→ Dart Model
→ Service
→ Output
```

Verifikasi:

- `dart pub get` berhasil;
- `dart analyze` — **No issues found**; dan
- `dart run bin/main.dart` berhasil mengambil dan menampilkan data REST API.

#### Running Project — Milestone Bab 6

Lokasi:

`app/student_life_assistant/`

Perubahan incremental dari Bab 5 meliputi:

- model `ExternalTodo`;
- `ExternalTodoService` sebagai pemisah akses layanan eksternal dari UI;
- screen **External Task Feed**;
- feature card **Tugas Eksternal** pada halaman utama;
- pengambilan data asynchronous dari REST API;
- decoding JSON menjadi model Dart;
- loading, success, empty, dan error state; dan
- mekanisme retry setelah kegagalan jaringan.

Dependency baru:

`http: ^1.6.0`

Alur utama:

```text
External Data
→ HTTP/REST
→ JSON
→ Dart Model
→ Service
→ Future/async-await
→ State
→ UI
```

Implementasi running project telah melalui:

- `flutter analyze` — **No issues found**;
- `flutter test` — **All tests passed**;
- runtime verification pada Chrome;
- success test pengambilan data REST API;
- network failure test; dan
- retry/recovery test.

Dokumentasi verifikasi:

`BAB06_VERIFICATION.md`

Pada akhir Bab 6, **Student Life Assistant** telah mencapai tahap:

**Connected Application**

Milestone ini menjadi baseline pengembangan backend, cloud, dan authentication pada Bab 7.

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
| Bab 4 | Responsive UI & Navigation | Content Locked — Code Verified |
| Bab 5 | State, Async & Local Data | Content Locked — Code Verified |
| Bab 6 | REST API, JSON & Service | Content Locked — Code Verified |
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

Lakukan static analysis:

```bash
flutter analyze
```

Jalankan pengujian:

```bash
flutter test
```

Jalankan aplikasi:

```bash
flutter run
```

Untuk menjalankan pada Chrome:

```bash
flutter run -d chrome
```

> Jika ingin melakukan formatting, periksa terlebih dahulu scope file yang akan diubah agar checkpoint bab sebelumnya tidak mengalami perubahan format yang tidak diperlukan.

---

## Menjalankan Contoh Bab

Contoh atau praktik terarah disimpan pada direktori:

`examples/`

### Contoh Bab 2 — Dart Logic

```bash
dart run examples/bab02_dart_logic/main.dart
```

### Contoh Bab 3 — Student Profile

```bash
cd examples/bab03_student_profile
flutter pub get
flutter analyze
```

### Contoh Bab 4 — Responsive Layout

```bash
cd examples/bab04_responsive_layout
flutter pub get
flutter analyze
flutter run -d chrome
```

### Contoh Bab 4 — Navigation & Screen Flow

```bash
cd examples/bab04_navigation_screen_flow
flutter pub get
flutter analyze
flutter run -d chrome
```

### Contoh Bab 5 — State, Async & Local Data

```bash
cd examples/bab05_state_async_local_data
flutter pub get
flutter analyze
flutter run -d chrome
```

### Contoh Bab 6 — REST API, JSON & Service

```bash
cd examples/bab06_rest_api_json_service
dart pub get
dart analyze
dart run bin/main.dart
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
   Milestone kode diperiksa melalui dependency resolution, formatting sesuai kebutuhan, static analysis, testing, dan runtime verification.

6. **Batas materi antar-bab dijaga**
   Implementasi pada suatu bab tidak mengambil konsep utama yang baru dibahas pada bab berikutnya.

7. **Evidence pengembangan dipertahankan**
   Verification document dan riwayat Git digunakan untuk menjaga keterlacakan milestone implementasi.

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

## Progression Student Life Assistant

Perkembangan running project sampai Bab 6:

```text
Flutter Baseline
      ↓
Dart Logic
      ↓
Flutter UI
      ↓
Multi-Screen Application
      ↓
Stateful & Persistent App
      ↓
Connected Application
```

Tahap berikutnya:

```text
Connected Application
      ↓
Cloud Application
      ↓
Device-Integrated Application
      ↓
AI-Enhanced Application
      ↓
Final Mobile Product
```

---

## Repository

**Mobile Programming — Dari Flutter hingga Aplikasi Mobile Cerdas**

Companion repository untuk pembelajaran Mobile Programming berbasis Flutter dan pengembangan incremental **Student Life Assistant**.
