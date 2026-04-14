# ANALISIS DAN PERANCANGAN

## Latar Belakang Instansi

## Sistem yang Sedang Berjalan

Berdasarkan observasi pada anjungan UPA, saat ini fasilitas hardware berupa mesin anjungan (kiosk) dan printer telah tersedia secara fisik. Namun, pemanfaatannya belum optimal karena tidak adanya sistem perangkat lunak yang menjembatani kebutuhan cetak pengguna secara mandiri. Saat ini, perangkat tersebut beroperasi secara konvensional dan eksklusif, di mana proses pencetakan dokumen hanya dapat dilakukan secara manual oleh staf pengelola (mentor). Belum ada mekanisme yang memungkinkan pengguna (mahasiswa) untuk mengakses printer tersebut dari perangkat mereka masing-masing, sehingga konsep self-service belum berjalan di fasilitas ini.

## Analisa Pengembangan

### Analisa Sistem Baru

Untuk mengatasi keterbatasan pada sistem yang sedang berjalan, dikembangkan sebuah sistem Web Self-Printing berbasis *Real-Time Data Synchronization*. Sistem ini mengubah proses cetak manual menjadi otomatis dan mandiri (*Web-to-Print Workflow*) dengan memanfaatkan protokol WebSocket untuk komunikasi dua arah tanpa jeda.

Alur kerja sistem baru ini dirancang sebagai berikut:

1. Inisiasi & Identifikasi: Layar utama anjungan menampilkan sebuah kode QR yang dinamis.
2. Unggah Dokumen (*Mobile*): Pengguna memindai kode QR menggunakan perangkat seluler (HP) yang akan mengarahkan mereka ke halaman web khusus untuk mengunggah file berekstensi PDF.
3. Sinkronisasi *Real-Time*: Setelah file terunggah, protokol WebSocket secara otomatis memberikan instruksi kepada browser di mesin anjungan untuk menampilkan file tersebut di layar tanpa perlu melakukan refresh halaman.
4. Konfigurasi dan Permintaan Cetak: Melalui layar sentuh anjungan, pengguna menekan tombol "Print", lalu sistem akan menampilkan *preview* dokumen beserta opsi konfigurasi cetak (jenis kertas, full page/custom page, dan opsi warna/hitam putih). Setelah selesai, pengguna menekan tombol "Request".
5. Verifikasi Admin: Permintaan cetak akan masuk secara *real-time* ke halaman web Admin. Admin dapat melihat detail konfigurasi dan memiliki wewenang untuk menekan tombol Terima (Acc) atau Tolak (Reject).
6. Eksekusi Cetak: Jika Admin menyetujui (Acc), status tombol pada layar anjungan pengguna seketika berubah menjadi hijau. Pengguna dapat menekan tombol tersebut, melihat *preview* akhir, dan menekan "Cetak Sekarang" untuk memicu mesin printer mengeluarkan dokumen fisik.
7. *Monitoring* (*Dashboard*): Sistem baru juga dilengkapi dengan Dashboard untuk Admin, yang melacak metrik penggunaan seperti jumlah kertas yang dicetak (per bulan dan *all-time*) serta grafik tren penggunaan.

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
PHP & Bahasa Pemrograman Web. \\ \hline
WebSocket Server & Digunakan untuk komunikasi *real-time* (misal: Laravel Reverb) agar status antrean terbarui secara instan. \\ \hline
PDF Engine & Digunakan untuk menghasilkan dokumen atau laporan dalam format PDF. \\ \hline
\end{longtable}


### Kebutuhan Pengguna

Berdasarkan analisis alur kerja, sistem ini melibatkan dua aktor utama dengan hak akses dan kebutuhan fungsional yang berbeda:

Kebutuhan pengguna biasa (User / Mahasiswa) sebagai berikut.

1. Membutuhkan antarmuka di layar seluler untuk mengunggah dokumen (PDF).
2. Membutuhkan antarmuka di layar anjungan untuk melihat preview dokumen.
3. Membutuhkan fitur konfigurasi cetak (warna, ukuran, rentang halaman) di layar anjungan.
4. Membutuhkan indikator visual (*real-time*) mengenai status persetujuan cetak dari admin.
5. Membutuhkan tombol eksekusi untuk memulai proses printing fisik.

Kebutuhan administrator (Admin) sebagai berikut.

1. Membutuhkan fitur otentikasi (*login*) untuk masuk ke panel manajemen.
2. Membutuhkan halaman Daftar *Request* yang menampilkan antrean permintaan cetak secara *real-time* beserta detail konfigurasinya.
3. Membutuhkan fitur aksi untuk menyetujui atau menolak permintaan cetak pengguna.
4. Membutuhkan halaman *Dashboard* statistik untuk memonitor total penggunaan kertas, penggunaan bulanan, dan tren operasional printer.

## Perancangan Sistem Baru

Berdasarkan hasil analisis kebutuhan sistem dan pengguna pada tahap sebelumnya, tahap perancangan sistem baru ini bertujuan untuk memodelkan solusi teknis dari aplikasi Web Self-Printing. Perancangan ini mencakup pemodelan fungsionalitas dan alur sistem menggunakan pendekatan *Unified Modeling Language* (UML) serta perancangan basis data relasional. Model perancangan ini akan menjadi cetak biru (blueprint) dasar bagi pengembang dalam membangun arsitektur backend sistem agar sinkronisasi data dapat berjalan secara *real-time*.

### Arsitektur Aplikasi

Arsitektur aplikasi menggambarkan topologi jaringan dan infrastruktur logis dari sistem yang dibangun. Berbeda dengan arsitektur *client-server* tradisional yang bersifat searah, arsitektur sistem Web Self-Printing ini dirancang menggunakan pendekatan terdistribusi yang melibatkan berbagai perangkat fisik dan antarmuka secara bersamaan. Bagian ini memvisualisasikan bagaimana aliran data bergerak dari perangkat seluler pengguna, dikelola oleh *server* dan basis data melalui internet, disinkronisasikan menggunakan protokol WebSocket, hingga akhirnya dieksekusi oleh mesin anjungan dan printer fisik di lokasi.

![Arsitektur Aplikasi](kp/images/arsitektur-aplikasi.png)

### Diagram *Use Case*

Diagram Use Case digunakan untuk menggambarkan interaksi antara pengguna dengan sistem yang akan dibangun. Pada sistem self-printing ini, terdapat dua aktor utama yang saling berinteraksi, yaitu Pengguna (yang berinteraksi melalui perangkat seluler dan layar anjungan) serta Admin (yang berinteraksi melalui *dashboard*). Diagram berikut mendeskripsikan daftar aktivitas utama yang dapat dilakukan oleh masing-masing aktor.

![Diagram *Use Case*](kp/images/usecase-diagram.png)

### Diagram *Activity*

Diagram Activity memvisualisasikan alur kerja (*workflow*) dari proses bisnis yang berjalan di dalam sistem. Karena aplikasi ini memiliki alur proses yang melintasi beberapa perangkat secara real-time, mulai dari pemindaian kode QR di anjungan, pengunggahan berkas di perangkat seluler, konfirmasi melalui panel admin, hingga eksekusi cetak di anjungan. Diagram ini sangat krusial untuk memetakan percabangan dan transisi data antar antarmuka tersebut.

#### Diagram *Activity* Melihat *Dashboard*

Gambar \ref{fig:activity-melihat-dash} menunjukkan bagaimana Admin membuka halaman *dashboard* dan sistem menampilkan halaman *dashboard* yang berisi ringkasan data statistik penggunaan kertas.

![Diagram \textit{Activity} Melihat \textit{Dashboard} \label{fig:activity-melihat-dash}](kp/images/activity/1.dashboard.png)

#### Diagram *Activity Login*

Gambar \ref{fig:activity-login} menunjukkan bagaimana Admin melakukan proses autentikasi ke dalam sistem guna mendapatkan hak akses penuh ke *dashboard*.

![Diagram \textit{Activity Login} \label{fig:activity-login}](kp/images/activity/2.login.png)

#### Diagram *Activity* Kelola Permintaan Cetak

Gambar \ref{fig:activity-kelola-printrequest} menunjukkan bagaimana Admin melakukan tinjauan terhadap antrean permintaan cetak dokumen yang masuk dan memberikan persetujuan (*approve*) atau penolakan (*reject*).

![Diagram \textit{Activity} Kelola Permintaan Cetak \label{fig:activity-kelola-printrequest}](kp/images/activity/3.kelola-printrequest.png)

#### Diagram *Activity* Unggah Dokumen

Gambar \ref{fig:activity-unggah-dokumen} menunjukkan bagaimana User melakukan pemindaian kode QR di layar anjungan untuk mengakses halaman pengunggahan dokumen PDF melalui perangkat seluler, yang kemudian akan disinkronisasikan secara otomatis ke antarmuka terminal anjungan.

![Diagram \textit{Activity} Unggah Dokumen \label{fig:activity-unggah-dokumen}](kp/images/activity/4.unggah-dokumen.png)

#### Diagram *Activity Request* Cetak Dokumen

Gambar \ref{fig:activity-request-cetak} menunjukkan bagaimana User melakukan peninjauan *preview* dokumen serta penyesuaian parameter cetak seperti jumlah salinan, rentang halaman, dan mode warna sebelum mengirimkan permintaan cetak yang akan memperbarui antrean admin secara otomatis.

![Diagram \textit{Activity Request} Cetak Dokumen \label{fig:activity-request-cetak}](kp/images/activity/5.request-cetak.png)

#### Diagram *Activity* Cetak Dokumen

Gambar \ref{fig:activity-cetak-dokumen} menunjukkan bagaimana User melakukan eksekusi pencetakan fisik pada mesin anjungan, yang secara otomatis mengirimkan instruksi ke perangkat printer.

![Diagram \textit{Activity} Cetak Dokumen \label{fig:activity-cetak-dokumen}](kp/images/activity/6.cetak-dokumen.png)

### Diagram *Class*

Diagram *class* pada Gambar \ref{fig:diagram-class} menunjukkan struktur sistem secara statis dengan memperlihatkan kelas-kelas yang ada, atribut, metode, serta hubungan antar objek dalam Web Self-Printing. Diagram ini berfungsi sebagai representasi dari struktur basis data dan logika sistem yang akan diimplementasikan.

![Diagram \textit{Class} \label{fig:diagram-class}](kp/images/class.png)

### *Entity Relationship Diagram*

Perancangan *Entity Relationship Diagram* (ERD) bertujuan untuk memodelkan struktur logis dari basis data yang akan digunakan oleh sistem *backend*. Gambar \ref{fig:erd} memvisualisasikan entitas-entitas utama yang saling berelasi dalam sistem penyimpanan, seperti entitas berkas dan riwayat permintaan cetak. Relasi antar entitas ini dirancang sedemikian rupa untuk mendukung performa sistem *real-time* dan menjaga konsistensi data (*data integrity*).

![\textit{Entity Relationship Diagram} \label{fig:erd}](kp/images/erd.png)

### Data Dictionary

Kamus data ini mendokumentasikan spesifikasi teknis dari setiap tabel basis data secara fisik, yang mencakup nama kolom, tipe data, panjang, serta penentuan *Primary Key* dan *Foreign Key*. Spesifikasi ini menjadi acuan pasti pada saat pembuatan struktur basis data di sisi *server*.

#### Tabel Users

Tabel `users` digunakan untuk menyimpan data akun autentikasi Admin.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Users} \\
\hline
Kolom & Tipe Data & Key & Keterangan \\ \hline
id & BIGINT (20) & Primary Key & ID Unik pengguna \\ \hline
name & VARCHAR (255) & - & Nama lengkap pengguna \\ \hline
email & VARCHAR (255) & - & Alamat *email* (unik) untuk login \\ \hline
password  & VARCHAR (255) & - & Kata sandi terenkripsi \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Filetoprints

Tabel `filetoprints` digunakan untuk menyimpan data berkas yang akan dicetak.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Filetoprints} \\
\hline
Kolom & Tipe Data & Key & Keterangan \\ \hline
id & BIGINT (20) & Primary Key & ID Unik berkas \\ \hline
filename & VARCHAR (255) & - & Lokasi berkas disimpan \\ \hline
original\_name & VARCHAR (255) & - & Nama asli berkas ketika diunggah \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Printrequests

Tabel `printrequests` digunakan untuk menyimpan data riwayat permintaan cetak beserta konfigurasinya.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Printrequests} \\
\hline
Kolom & Tipe Data & Key & Keterangan \\ \hline
id & BIGINT (20) & Primary Key & ID Unik berkas \\ \hline
filetoprint\_id & BIGINT (20) & Foreign Key & FK ke tabel `filetoprints` \\ \hline
original\_name & BIGINT (20) & - & Nama asli berkas ketika diunggah \\ \hline
status & VARCHAR (255) & - & status dari permintaan cetak (ditolak, diterima, completed) \\ \hline
copies & BIGINT (20) & - & jumlah salinan \\ \hline
color\_mode & VARCHAR (255) & - & mode warna (berwarna/hitam putih) \\ \hline
paper\_size & VARCHAR (255) & - & ukuran kertas (A4/letter) \\ \hline
page\_range & VARCHAR (255) & - & rentang halaman \\ \hline
detected\_pages & BIGINT (20) & - & jumlah total halaman \\ \hline
calculated\_pages & BIGINT (20) & - & jumlah halaman yang dicetak \\ \hline
verified\_at & TIMESTAMP & - & waktu ketika permintaan cetak disetujui \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}