# zyramarket

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

______________________________________________________________________________________________

# TUGAS 7

**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya ?**

**Stateless Widget** adalah widget yang tidak memiliki keadaan yang berubah seiring waktu. Jadi, setelah widget akan dibuat, widget tidak dapat diubah lagi dan semua data yang diperlukan untuk membuat widget tersebut akan disediakan pada saat pembuatan. Contoh :  teks, gambar atau ikon yang hanya ditampilkan tanpa ada interaksi (tidak memerlukan pembaruan) sedangkan **Stateful widget** adalah widget yang memiliki keadaan yang memiliki keadaan. Jadi, widget ini dapat memperbarui tampilannya ketika ada perubahan, seperti saat pengguna menekan tombol. Contoh : elemen UI yang memerlukan pembaruan seperti, animasi, formulir  atau widget yang bisa memperbarui informasi berdasarkan input pengguna. 

**2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya ?**

- Scaffold: Struktur dasar untuk aplikasi, termasuk AppBar dan body.
- AppBar: untuk menampilkan judul aplikasi.
- Padding: Memberikan ruang pada sekitar widget.
- Column: Mengatur widget secara vertikal per kolom .
- Row: Mengatur widget secara horizontal per baris.
- InfoCard: Widget khusus untuk menampilkan informasi (NPM, Nama, Kelas) dalam kartu.
- SizedBox: Memberikan ruang kosong antar widget.
- Center: Memposisikan widget di tengah.
- Text: Menampilkan teks.
- GridView.count: Menampilkan widget dalam format grid.
- ItemCard: Widget khusus untuk menampilkan item dalam grid dengan interaksi.
- Card: Memberikan efek seperti shadow pada widget.
- Container: Mengatur padding, margin, dan dekorasi.
- SnackBar: Menampilkan pesan singkat kepada pengguna.
- Icon: Menampilkan ikon sesuai data.


**3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut ?**

**set State()** berfungsi untuk memperbarui UI agar mencerminkan perubahan pada data atau state dari sebuah widget. Ketika state atau data suatu widget mengalami perubahan, setState() digunakan untuk memberi tahu framework bahwa tampilan widget tersebut perlu dirender ulang. Tanpa setState(), perubahan data tidak akan terlihat pada UI karena Flutter tidak akan secara otomatis merender ulang tampilan berdasarkan perubahan di variabel.

**4. Jelaskan perbedaan antara const dengan final ?**

**Const** berfungsi untuk menetapkan nilai pada waktu kompilasi, sehingga nilai harus sudah diketahui sebelumnya dan tetap sepanjang waktu, biasanya untuk nilai seperti angka atau string . Sedangkan **final** berfungsi untuk menetapkan nilai pada waktu eksekusi, jadi memungkinkan nilainya sudah yang ditentukan pada saat program dijalankan, tetapi tidak bisa dirubah setelahnya, lebih digunakan untuk data. Pada Dart, const dan final digunakan untuk variabel yang nilainya tidak dapat diubah setelah ditetapkan, hanya berbeda pada waktu penentuan nilainya.


**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas ?**

**1. Membuat Proyek Baru:**

- Buat proyek baru bernama zyramarket dengan perintah flutter create zyramarket.
- Masuk ke direktori proyek dengan **cd zyramarket**.
- Jalankan proyek pertama kali dengan **flutter run**,  atau bisa menggunakan  Google Chrome setelah mengaktifkan dukungan web dengan **flutter config --enable-web.**
- Jalankan proyek tersebut di aplikasi Google Chrome dengan perintah: **flutter run -d chrome**

**2. Menambahkan File menu.dart**

- Buat file baru yang bernama menu.dart di dalam folder lib
- Pindahkan kode untuk halaman utama (MyHomePage) dari main.dart ke dalam menu.dart.
- Tambahkan import berikut di bagian atas main.dart, import 'package:zyramarket/menu.dart';
  
**3. Membuat tombol “Lihat Daftar Produk", "Tambah Produk", dan "Logout” dengan ikon dan teks**

- Tombol "Lihat Daftar Produk", "Tambah Produk", dan "Logout" dibuat sebagai bagian dari halaman utama aplikasi (MyHomePage).
- Masing-masing tombol disusun dalam bentuk kartu (card) pada GridView agar terlihat rapi dalam tata letak grid.
- Untuk mendefinisikan tombol-tombol ini, saya menggunakan kelas ItemHomepage, yang menyimpan data nama tombol, ikon, dan warna.

**4. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)**
- Pada daftar items di dalam MyHomePage, setiap item memiliki warna yang berbeda untuk membedakan tombol.
Berikut kodenya : 
final List<ItemHomepage> items = [ 
            ItemHomepage("Lihat Daftar Produk", Icons.loyalty_rounded, Colors.brown.shade200),
            ItemHomepage("Tambah Produk", Icons.hotel_class_rounded, Colors.blueGrey.shade200),
            ItemHomepage("Logout", Icons.logout, Colors.teal.shade200),
            ];
- Warna dari masing-masing tombol ini diambil dari item.color dan diterapkan pada latar belakang tombol di dalam ItemCard.

**5. Memunculkan Snackbar dengan pesan tertentu saat tombol ditekan**
- Setiap tombol di dalam ItemCard memiliki metode onTap yang memicu SnackBar untuk menampilkan pesan.
- Pesan pada SnackBar disesuaikan dengan tombol yang ditekan, misalnya, saat tombol "Lihat Daftar Produk" ditekan, pesan yang muncul adalah "Kamu telah menekan tombol Lihat Daftar Produk."
onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },

