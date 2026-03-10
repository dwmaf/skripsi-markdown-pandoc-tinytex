# ANALISIS DAN PERANCANGAN

## Latar Belakang Instansi

## Sistem yang Sedang Berjalan

Berdasarkan observasi pada anjungan UPA, saat ini fasilitas hardware berupa mesin anjungan (kiosk) dan printer telah tersedia secara fisik. Namun, pemanfaatannya belum optimal karena tidak adanya sistem perangkat lunak yang menjembatani kebutuhan cetak pengguna secara mandiri. Saat ini, perangkat tersebut beroperasi secara konvensional dan eksklusif, di mana proses pencetakan dokumen hanya dapat dilakukan secara manual oleh staf pengelola (mentor). Belum ada mekanisme yang memungkinkan pengguna (mahasiswa) untuk mengakses printer tersebut dari perangkat mereka masing-masing, sehingga konsep self-service belum berjalan di fasilitas ini.

## Analisa Pengembangan

### Analisa Sistem Baru

Untuk mengatasi keterbatasan pada sistem yang sedang berjalan, dikembangkan sebuah sistem Web Self-Printing berbasis Real-Time Data Synchronization. Sistem ini mengubah proses cetak manual menjadi otomatis dan mandiri (Web-to-Print Workflow) dengan memanfaatkan protokol WebSocket untuk komunikasi dua arah tanpa jeda.

Alur kerja sistem baru ini dirancang sebagai berikut:

1. Inisiasi & Identifikasi: Layar utama anjungan menampilkan sebuah QR Code yang dinamis.
2. Unggah Dokumen (Mobile): Pengguna memindai QR Code menggunakan perangkat seluler (HP) yang akan mengarahkan mereka ke halaman web khusus untuk mengunggah file berekstensi PDF.
3. Sinkronisasi Real-Time: Setelah file terunggah, protokol WebSocket secara otomatis memberikan instruksi kepada browser di mesin anjungan untuk menampilkan file tersebut di layar tanpa perlu melakukan refresh halaman.
4. Konfigurasi Cetak: Melalui layar sentuh anjungan, pengguna menekan tombol "Print", lalu sistem akan menampilkan preview dokumen beserta opsi konfigurasi cetak (jenis kertas, full page/custom page, dan opsi warna/hitam putih). Setelah selesai, pengguna menekan tombol "Request".
5. Verifikasi Admin: Permintaan cetak akan masuk secara real-time ke halaman web admin. Admin dapat melihat detail konfigurasi dan memiliki wewenang untuk menekan tombol Terima (Acc) atau Tolak (Reject).
6. Eksekusi Cetak: Jika admin menyetujui (Acc), status tombol pada layar anjungan pengguna seketika berubah menjadi hijau. Pengguna dapat menekan tombol tersebut, melihat preview akhir, dan menekan "Cetak Sekarang" untuk memicu mesin printer mengeluarkan dokumen fisik.
7. Monitoring (Dashboard): Sistem baru juga dilengkapi dengan Dashboard Analytics untuk admin, yang melacak metrik penggunaan seperti jumlah kertas yang dicetak (per bulan dan all-time) serta grafik tren penggunaan.

### Kebutuhan Sistem

Untuk mendukung berjalannya sistem baru yang diusulkan, diperlukan spesifikasi sistem yang mencakup perangkat keras (hardware), perangkat lunak (software), dan jaringan. Kebutuhan jaringan, yaitu Koneksi internet/intranet lokal (LAN/Wi-Fi) yang stabil untuk memastikan latensi rendah saat proses sinkronisasi data real-time.

\begin{longtable}{|p{4cm}|p{10cm}|}
\caption{Kebutuhan Perangkat Keras} \label{tab:hardware} \\
\hline
\textbf{Perangkat} & \textbf{Deskripsi/Spesifikasi Minimun} \\
\hline
\endfirsthead
\hline
\textbf{Perangkat} & \textbf{Deskripsi/Spesifikasi Minimun} \\
\hline
\endhead
\hline
\endfoot
Anjungan (Kiosk) & PC atau Mini PC yang dilengkapi dengan layar sentuh (*touchscreen*) untuk interaksi pengguna di lokasi. \\ \hline
Printer & Mesin cetak fisik untuk mencetak nomor antrean atau bukti transaksi. \\ \hline
Smartphone & Perangkat *mobile* yang digunakan oleh asesi untuk memantau status antrean. \\ \hline
PC Admin & Perangkat komputer yang digunakan oleh administrator untuk mengelola antrean dan sistem secara keseluruhan. \\ \hline
\end{longtable}

\begin{longtable}{|p{4cm}|p{10cm}|}
\caption{Kebutuhan Perangkat Lunak} \label{tab:software} \\
\hline
\textbf{Perangkat Lunak} & \textbf{Kegunaan} \\
\hline
\endfirsthead
\hline
\textbf{Perangkat Lunak} & \textbf{Kegunaan} \\
\hline
\endhead
\hline
\endfoot
Web Browser & Digunakan pada sisi anjungan, asesi, dan admin untuk mengakses antarmuka sistem. \\ \hline
Web Server & Server yang menghosting aplikasi web (misal: Apache atau Nginx). \\ \hline
WebSocket Server & Digunakan untuk komunikasi *real-time* (misal: Laravel Reverb) agar status antrean terbarui secara instan. \\ \hline
PDF Engine & Digunakan untuk menghasilkan dokumen atau laporan dalam format PDF. \\ \hline
\end{longtable}


### Kebutuhan Pengguna

Berdasarkan analisis alur kerja, sistem ini melibatkan dua aktor utama dengan hak akses dan kebutuhan fungsional yang berbeda:

Kebutuhan pengguna biasa (user / mahasiswa) sebagai berikut.

1. Membutuhkan antarmuka di layar seluler untuk mengunggah dokumen (PDF).
2. Membutuhkan antarmuka di layar anjungan untuk melihat preview dokumen.
3. Membutuhkan fitur konfigurasi cetak (warna, ukuran, rentang halaman) di layar anjungan.
4. Membutuhkan indikator visual (real-time) mengenai status persetujuan cetak dari admin.
5. Membutuhkan tombol eksekusi untuk memulai proses printing fisik.

Kebutuhan administrator (admin / mentor di UPA PK2 UNTAN) sebagai berikut.

1. Membutuhkan fitur otentikasi (Login) untuk masuk ke panel manajemen.
2. Membutuhkan halaman Daftar Request yang menampilkan antrean permintaan cetak secara real-time beserta detail konfigurasinya.
3. Membutuhkan fitur aksi (Action) untuk menyetujui (Acc) atau menolak (Reject) permintaan cetak pengguna.
4. Membutuhkan halaman Dashboard statistik untuk memonitor total penggunaan kertas, penggunaan bulanan, dan tren operasional printer.

## Perancangan Sistem Baru

Berdasarkan hasil analisis kebutuhan sistem dan pengguna pada tahap sebelumnya, tahap perancangan sistem baru ini bertujuan untuk memodelkan solusi teknis dari aplikasi Web Self-Printing. Perancangan ini mencakup pemodelan fungsionalitas dan alur sistem menggunakan pendekatan Unified Modeling Language (UML) serta perancangan basis data relasional. Model perancangan ini akan menjadi cetak biru (blueprint) dasar bagi pengembang dalam membangun arsitektur backend sistem agar sinkronisasi data dapat berjalan secara real-time.

### Arsitektur Aplikasi

Arsitektur aplikasi menggambarkan topologi jaringan dan infrastruktur logis dari sistem yang dibangun. Berbeda dengan arsitektur client-server tradisional yang bersifat searah, arsitektur sistem Web Self-Printing ini dirancang menggunakan pendekatan terdistribusi yang melibatkan berbagai perangkat fisik dan antarmuka secara bersamaan. Bagian ini memvisualisasikan bagaimana aliran data (data flow) bergerak dari perangkat seluler pengguna, dikelola oleh peladen (server) dan basis data melalui internet, disinkronisasikan menggunakan protokol WebSocket, hingga akhirnya dieksekusi oleh mesin anjungan dan printer fisik di lokasi.

![Arsitektur Aplikasi](images/kp/images/arsitektur-aplikasi.png)

### Diagram *Use Case*

Diagram Use Case digunakan untuk menggambarkan interaksi antara pengguna (actor) dengan sistem yang akan dibangun. Pada sistem self-printing ini, terdapat dua aktor utama yang saling berinteraksi, yaitu Pengguna (yang berinteraksi melalui smartphone dan layar anjungan) serta Admin/Mentor (yang berinteraksi melalui dashboard manajemen). Diagram berikut mendeskripsikan batas sistem (system boundary) dan daftar aktivitas utama yang dapat dilakukan oleh masing-masing aktor.

![Diagram *Use Case*](images/kp/images/activity-diagram.png)

### Diagram *Activity*

Diagram Activity memvisualisasikan alur kerja (workflow) atau aktivitas sekuensial dari proses bisnis yang berjalan di dalam sistem. Karena aplikasi ini memiliki alur proses yang melintasi beberapa perangkat secara real-time, mulai dari pemindaian QR Code di anjungan, pengunggahan file di smartphone, konfirmasi melalui panel admin, hingga eksekusi cetak kembali di anjungan—diagram ini sangat krusial untuk memetakan percabangan (decision) dan transisi data antar antarmuka tersebut.

### ERD

Perancangan Entity Relationship Diagram (ERD) bertujuan untuk memodelkan struktur logis dari basis data (database) yang akan digunakan oleh sistem backend. ERD memvisualisasikan entitas-entitas utama yang saling berelasi dalam sistem penyimpanan, seperti entitas penyimpanan riwayat cetak, konfigurasi dokumen, dan akumulasi penggunaan kertas. Relasi antar entitas ini dirancang sedemikian rupa untuk mendukung performa sistem real-time dan menjaga konsistensi data (data integrity).

### Data Dictionary

Data Dictionary atau Kamus Data merupakan penjelasan rinci dari setiap atribut yang terdapat pada entitas di dalam ERD. Kamus data ini mendokumentasikan spesifikasi teknis dari setiap tabel basis data secara fisik, yang mencakup nama field (kolom), tipe data, panjang atau ukuran memori, serta penentuan kunci utama (Primary Key) dan kunci tamu (Foreign Key). Spesifikasi ini menjadi acuan pasti pada saat pembuatan struktur basis data di sisi server.