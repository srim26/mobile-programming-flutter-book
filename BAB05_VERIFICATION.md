# Bab 5 — Verification Checklist

Target milestone: **Stateful & Persistent App**.

## Running project

```bash
cd app/student_life_assistant
flutter pub get
dart format lib test
flutter analyze
flutter test
flutter run -d chrome
```

Runtime checks:

1. Dashboard tetap menampilkan Tugas, Jadwal, dan Profil.
2. Tugas dapat dicentang dan indikator progres berubah tanpa berpindah layar.
3. Profil menampilkan loading state saat membaca preferensi lokal.
4. Nama tampilan dapat diubah dan disimpan.
5. Opsi "Tampilkan tugas selesai" dapat diubah dan disimpan.
6. Tutup/reload aplikasi, lalu pastikan preferensi Profil tetap tersedia.
7. Navigasi dan responsive layout Bab 4 tetap berfungsi.

## Praktik terarah

```bash
cd examples/bab05_state_async_local_data
flutter pub get
dart format lib
flutter analyze
flutter run -d chrome
```

Runtime checks:

1. Loading indicator tampil ketika data awal dibaca.
2. Nama dapat disimpan.
3. Setelah reload/restart, nama yang tersimpan dapat dimuat kembali.
4. Pesan sukses/error tidak membuat aplikasi crash.

## Gate

Status boleh diubah menjadi **Content Locked — Code Verified** hanya jika static analysis, test, dan runtime checks di atas lulus.
