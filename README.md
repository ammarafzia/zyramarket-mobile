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

__________________________________________________________________________________________________________

# TUGAS 8

**1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**

const yang berarti object yang bersifat tetap atau “Konstan” dan  digunakan untuk menandakan bahwa sebuah objek atau widget tidak akan berubah setelah dibuat. Saat kita menandai widget dengan const, Flutter hanya akan membuat satu copy-an objek tersebut dan akan menggunakannya berulang kali. Misalnya, jika kita menggunakan widget yang sama di beberapa tempat, Flutter tidak perlu membuat ulang widget tersebut setiap kali.

- Keuntungan utama dari menggunakan const : 
  -  Aplikasi menjadi lebih efisien, karena tidak ada pembuatan objek baru yang tidak perlu.
  -  Widget yang bersifat const juga tidak akan diperbarui ulang setiap kali tampilan berubah, yang membantu meningkatkan kinerja aplikasi. Namun, kita tidak menggunakan
  -  const untuk widget yang nilainya berubah-ubah, sebaiknya menggunakan const pada widget yang nilainya tetap dan tidak berubah, seperti teks atau gambar statis.

- Kapan sebaiknya menggunakan const?
  - Jika widget yang nilainya tetap dan tidak berubah, contohnya Text, Icon, atau Padding yang tetap.
  - Jangan menggunakan const ketika Nilai variabel berubah seiring waktu.

**2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

Column dan Row adalah dua widget yang digunakan untuk mengatur layout atau tata letak elemen-elemen di dalam aplikasi. Keduanya flex widget yang berfungsi  untuk menyusun elemen widget secara vertikal atau horizontal.

**Column** digunakan untuk mengatur tata letak elemen-elemen seperti teks, tombol, gambar, dan lainnya dalam satu kolom vertikal. Sedangkan **Row** digunakan untuk  menampilkan elemen-elemen yang perlu sejajar dalam satu baris, seperti tombol yang ditempatkan berdampingan atau ikon yang saling berdekatan.

Berikut contoh  implementasi dari column dan row dari kode yang sudah saya buat:

 **Row** 
 
Row(

  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
    InfoCard(title: 'NPM', content: npm, color: Colors.blueAccent.shade100),
    
    InfoCard(title: 'Name', content: name, color: Colors.blueAccent.shade100),
    
    InfoCard(title: 'Class', content: className, color: Colors.blueAccent.shade100),
    
  ],
  
),

**Column** 

child: Column(

  crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [
  
    // Row untuk menampilkan 3 InfoCard
    
    Row(...),
    
    const SizedBox(height: 16.0),
    
    Center(
    
      child: Column(
      
        children: [
	
          const Padding(...),
	  
          GridView.count(...),
	  
        ],
	
      ),
      
    ),
    
  ],
  
),


**3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

- TextFormField:
  - Nama Produk: Input teks untuk nama produk dengan validasi.
  - Deskripsi Produk: Input teks untuk deskripsi produk dengan validasi.
  - Harga Produk: Input teks untuk harga produk dengan validasi agar berupa angka.
  - Stok Produk: Input teks untuk stok produk dengan validasi agar berupa angka.
    
- ElevatedButton:
  - Tombol yang digunakan untuk mengirim atau menyimpan data yang diinput ke dalam form setelah divalidasi.

Yang tidak gunakan:
- DropdownButton, Tidak digunakan karena form hanya membutuhkan input teks (nama, deskripsi) dan angka (harga, stok), tanpa opsi terbatas
- Slider: Tidak digunakan karena tidak diperlukan input yang bentuknya range.

	

**4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

Untuk mengatur theme bisa menggunakan Themdata dalam aplikasi, dapat mendefinisikan elemen elemen tema seperti warna utama, warna sekunder, font, gaya di dalam MaterialApp. Theme.of(context) untuk mengakses tema yang sudah di buat untuk mengimplementasikan tema pada aplikasi (main.dart) dan saya juga sudah mengimplementasikan melalui main.dart

**5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

- **Navigator.push():** Digunakan untuk menambahkan halaman baru ke stack navigasi, sehingga halaman saat ini tetap ada di belakang halaman yang baru.
  jadi , navigator akan membuka HalamanTujuan dan menambahkannya ke stack navigasi.
- **Navigator.pop():** Digunakan untuk menutup halaman saat ini dan kembali ke halaman sebelumnya dalam stack navigasi. Jadi, navigator akan menghapus halaman saat ini dari
  stack dan kembali ke halaman sebelumnya.
- **Navigator.pushReplacement():** Digunakan untuk menggantikan halaman saat ini dengan halaman baru. Halaman saat ini akan dihapus dari stack dan digantikan dengan halaman baru. Jadi, Halaman saat ini akan digantikan dengan HalamanTujuan, dan halaman baru akan menjadi halaman teratas di stack.



