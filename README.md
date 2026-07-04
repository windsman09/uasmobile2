# uasmobile2


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:
  📋 Task Manager

Aplikasi Task Manager berbasis Flutter yang memungkinkan pengguna mengelola tugas harian dengan fitur autentikasi Firebase, penyimpanan data lokal menggunakan SQLite, dan notifikasi deadline tugas.

---

## 👨‍💻 Informasi Proyek

**Nama Aplikasi:** Task Manager

**Mata Kuliah:** Pemrograman Mobile

**Framework:** Flutter

**Bahasa Pemrograman:** Dart

---

## 🚀 Fitur Utama

### 🔐 Authentication (Firebase)

- Register menggunakan Email dan Password
- Login menggunakan Email dan Password
- Logout pengguna

### ✅ Manajemen Tugas

- Menambahkan tugas baru
- Menampilkan daftar tugas
- Mengubah tugas
- Menghapus tugas

### 💾 Penyimpanan Lokal

- Menggunakan SQLite
- Data tetap tersimpan meskipun aplikasi ditutup

### 🔔 Notifikasi

- Notifikasi pengingat deadline tugas
- Firebase Cloud Messaging (FCM)

### 📱 Responsive UI

- Mendukung berbagai ukuran layar
- Menggunakan Material Design 3

### 🎯 State Management

- Provider

---

## 🛠️ Teknologi yang Digunakan

- Flutter
- Dart
- Firebase Authentication
- Firebase Cloud Messaging
- SQLite (sqflite)
- Provider
- Material 3

---

## 📂 Struktur Project

```text
lib/
│
├── models/
│   └── task.dart
│
├── providers/
│   ├── auth_provider.dart
│   └── task_provider.dart
│
├── services/
│   ├── auth_service.dart
│   ├── database_service.dart
│   └── notification_service.dart
│
├── screens/
│   ├── login_screen.dart
│   ├── register_screen.dart
│   ├── home_screen.dart
│   └── task_form_screen.dart
│
└── main.dart
```

---

## ⚙️ Cara Menjalankan Aplikasi

### 1. Clone Repository

```bash
git clone https://github.com/username/taskmanager.git
```

### 2. Masuk ke Folder Project

```bash
cd taskmanager
```

### 3. Install Dependency

```bash
flutter pub get
```

### 4. Konfigurasi Firebase

Tambahkan file:

```text
android/app/google-services.json
```

sesuai dengan project Firebase yang digunakan.

Aktifkan:

```text
Authentication
→ Email/Password
```

pada Firebase Console.

### 5. Jalankan Aplikasi

```bash
flutter run
```

---

## 🗄️ Database

Tabel SQLite:

```sql
CREATE TABLE tasks(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 title TEXT,
 description TEXT,
 deadline TEXT
);
```

---

## 📸 Screenshot

### Login

Tambahkan screenshot login di sini.

### Register

Tambahkan screenshot register di sini.

### Home

Tambahkan screenshot halaman utama di sini.

### Tambah Tugas

Tambahkan screenshot form tambah tugas di sini.

---

## 📋 Penilaian yang Dipenuhi

| Fitur | Status |
|---------|---------|
| Firebase Authentication | ✅ |
| SQLite CRUD | ✅ |
| Provider State Management | ✅ |
| Responsive UI | ✅ |
| Material 3 | ✅ |
| Push Notification | ✅ |
| Null Safety | ✅ |

---

## 👤 Author

**Nama:** Istianto
NIM : 2303020038
Prodi: RPL
**Proyek UAS Pemrograman Mobile**

2026 
