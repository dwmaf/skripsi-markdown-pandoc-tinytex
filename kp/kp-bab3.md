# ANALISIS DAN PERANCANGAN

## Latar Belakang Instansi

Unit Penunjang Akademik Pengembangan Karier dan Kewirausahaan (UPA PK2) Universitas Tanjungpura, yang secara resmi berdiri pada bulan Oktober 2024, merupakan unit strategis perguruan tinggi yang berfokus pada pengembangan karier dan pembinaan kewirausahaan bagi mahasiswa serta alumni. Unit ini memiliki peran fundamental dalam menjembatani dunia pendidikan dengan dunia usaha, industri, dan pemerintahan guna mencetak lulusan yang adaptif, inovatif, dan berdaya saing tinggi di dunia kerja. Secara operasional, pusat layanan dan administrasi UPA PK2 UNTAN berlokasi di Gedung Konferensi Lantai 2, Jalan Jenderal Ahmad Yani, Bansir Laut, Kecamatan Pontianak Tenggara, Kota Pontianak, Kalimantan Barat 78124.

## Sistem yang Sedang Berjalan

Berdasarkan observasi pada anjungan UPA, saat ini fasilitas *hardware* berupa mesin anjungan (kiosk) dan printer di dalamnya telah tersedia secara fisik. Namun, pemanfaatannya belum optimal karena tidak adanya sistem perangkat lunak yang menjembatani kebutuhan cetak pengguna secara mandiri. 

Jika pun ingin melakukan cetak dokumen lewat anjungan saat ini masih dilakukan secara konvensional dan manual dengan alur sebagai berikut:

1. Pengguna harus menautkan akun WhatsApp pribadi mereka pada *browser* di mesin anjungan untuk mengunduh dokumen yang akan dicetak.
2. Pengguna mengeksekusi perintah cetak secara langsung melalui fitur *print* bawaan *browser* atau aplikasi pembuka PDF tanpa melalui sistem otorisasi khusus.

Kondisi tersebut menimbulkan beberapa permasalahan utama, yaitu:

1. Risiko Keamanan dan Privasi: Penggunaan akun WhatsApp pribadi pada perangkat publik sangat rentan terhadap pencurian data. Sering kali pengguna lupa melakukan *logout*, sehingga riwayat pesan dan dokumen dapat diakses oleh pengguna berikutnya.
2. Ketiadaan Kendali Mutu dan Aset: Karena pengguna dapat mencetak secara bebas langsung dari *browser*, pihak pengelola (mentor) kesulitan melakukan pengawasan, serta tidak adanya rekapitulasi otomatis terhadap volume penggunaan kertas.

## Analisa Pengembangan

### Analisa Sistem Baru

Untuk mengatasi keterbatasan pada sistem yang sedang berjalan, dikembangkan sebuah sistem Web *Self-Printing* berbasis *Real-Time Data Synchronization*. Sistem ini mengubah proses cetak manual menjadi otomatis dan mandiri (*Web-to-Print Workflow*) dengan memanfaatkan protokol WebSocket untuk komunikasi dua arah tanpa jeda.

Alur kerja sistem baru ini dirancang pada Gambar \ref{fig:proses-bisnis}.

![Proses bisnis sistem \label{fig:proses-bisnis}](kp/images/proses-bisnis.png)

Berikut adalah penjelasan dari proses bisnis pada Gambar \ref{fig:proses-bisnis}.

1. Inisiasi & Identifikasi: Layar utama anjungan menampilkan sebuah kode QR.
2. Unggah Dokumen (*Mobile*): Pengguna memindai kode QR menggunakan perangkat seluler yang akan mengarahkan mereka ke halaman web khusus untuk mengunggah *file* berekstensi PDF yang ingin dicetak.
3. Sinkronisasi *Real-Time*: Setelah *file* terunggah, protokol WebSocket secara otomatis memberikan instruksi kepada *browser* di mesin anjungan untuk menampilkan *file* tersebut di layar tanpa perlu melakukan refresh halaman.
4. Konfigurasi dan Permintaan Cetak: Melalui layar sentuh anjungan, pengguna menekan tombol "*Print*", lalu sistem akan menampilkan *preview* dokumen beserta opsi konfigurasi cetak (jenis kertas, *full page*/*custom page*, dan opsi warna/hitam putih). Setelah selesai, pengguna menekan tombol "*Request*".
5. Verifikasi Admin: Permintaan cetak akan masuk secara *real-time* ke halaman web Admin. Admin dapat melihat detail konfigurasi dan memiliki wewenang untuk menekan tombol Terima atau Tolak.
6. Eksekusi Cetak: Jika Admin menyetujui, status tombol pada layar anjungan pengguna seketika berubah menjadi hijau. Pengguna dapat menekan tombol tersebut, melihat *preview* akhir, dan menekan "Cetak Sekarang" untuk memicu mesin printer mencetak dokumen fisik.

### Kebutuhan Sistem

Untuk mendukung berjalannya sistem baru yang diusulkan, diperlukan spesifikasi sistem yang mencakup perangkat keras (*hardware*), perangkat lunak (*software*), dan jaringan. Kebutuhan jaringan, yaitu koneksi internet/intranet lokal (LAN/Wi-Fi) yang stabil untuk memastikan latensi rendah saat proses sinkronisasi data *real-time*.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13.5cm}
\addtolength{\LTcapwidth}{4\tabcolsep}
\addtolength{\LTcapwidth}{3\arrayrulewidth}
\begin{longtable}{|p{3.5cm}|p{10cm}|}
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
Anjungan (Kiosk) & PC atau Mini PC yang dilengkapi dengan layar sentuh \textit{touchscreen} untuk interaksi pengguna di lokasi. \\ \hline
Printer & Mesin cetak fisik untuk mencetak dokumen. \\ \hline
Perangkat Seluler & Perangkat \textit{mobile} yang digunakan oleh pengguna untuk mengunggah dokumen. \\ \hline
PC Admin & Perangkat komputer yang digunakan oleh admin untuk mengelola antrean cetak. \\ \hline
\end{longtable}

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13.5cm}
\addtolength{\LTcapwidth}{4\tabcolsep}
\addtolength{\LTcapwidth}{3\arrayrulewidth}
\begin{longtable}{|p{3.5cm}|p{10cm}|}
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
\textit{Browser} & Digunakan pada sisi anjungan, pengguna, dan admin untuk mengakses antarmuka sistem. \\ \hline
\textit{Web Server} & \textit{Server} yang menghosting aplikasi web (misal: Apache atau Nginx). \\ \hline
PHP & Bahasa Pemrograman Web. \\ \hline
\textit{Server} WebSocket & Digunakan untuk komunikasi \textit{real-time}, yaitu Laravel Reverb agar status antrean terbarui secara instan. \\ \hline
\textbf{Sumatra PDF} & Digunakan sebagai mesin pengeksekusi untuk mencetak berkas PDF yang diunggah pengguna secara langsung ke printer fisik tanpa memunculkan dialog cetak bawaan \textit{browser} (\textit{silent printing}). \\ \hline
\end{longtable}


### Kebutuhan Pengguna

Berdasarkan analisis alur kerja, sistem ini melibatkan dua aktor utama dengan hak akses dan kebutuhan fungsional yang berbeda:

Kebutuhan Pengguna sebagai berikut.

1. Membutuhkan antarmuka di layar seluler untuk mengunggah dokumen (PDF).
2. Membutuhkan antarmuka di layar anjungan untuk melihat preview dokumen dan memulai proses *printing* fisik.
3. Membutuhkan fitur konfigurasi cetak (warna, ukuran, rentang halaman) di layar anjungan.
4. Membutuhkan indikator visual (*real-time*) mengenai status persetujuan cetak dari admin.

Kebutuhan Admin sebagai berikut.

1. Membutuhkan fitur otentikasi (*login*) untuk masuk ke *dashboard*.
2. Membutuhkan halaman Daftar *Request* yang menampilkan antrean permintaan cetak secara *real-time* beserta detail konfigurasinya.
3. Membutuhkan fitur aksi untuk menyetujui atau menolak permintaan cetak pengguna.
4. Membutuhkan halaman *Dashboard* statistik untuk memonitor total penggunaan kertas, penggunaan bulanan, dan tren operasional printer.

## Perancangan Sistem Baru

Berdasarkan hasil analisis kebutuhan sistem dan pengguna pada tahap sebelumnya, tahap perancangan sistem baru ini bertujuan untuk memodelkan solusi teknis dari aplikasi Web *Self-Printing*. Perancangan ini mencakup pemodelan fungsionalitas dan alur sistem menggunakan pendekatan *Unified Modeling Language* (UML) serta perancangan basis data relasional. Model perancangan ini akan menjadi cetak biru dasar bagi pengembang dalam membangun arsitektur backend sistem agar sinkronisasi data dapat berjalan secara *real-time*.

### Arsitektur Aplikasi

Arsitektur aplikasi menggambarkan infrastruktur logis dari sistem yang dibangun. Berbeda dengan arsitektur *client-server* tradisional yang bersifat searah, arsitektur sistem Web *Self-Printing* ini dirancang menggunakan pendekatan terdistribusi yang melibatkan berbagai perangkat fisik dan antarmuka secara bersamaan. Bagian ini memvisualisasikan bagaimana aliran data bergerak dari perangkat seluler pengguna, dikelola oleh *server* dan basis data melalui internet, disinkronisasikan menggunakan protokol WebSocket, hingga akhirnya dieksekusi oleh mesin anjungan dan printer fisik di lokasi.

![Arsitektur aplikasi](kp/images/arsitektur-aplikasi.png){width=10cm}

### Diagram *Use Case*

Diagram *use case* digunakan untuk menggambarkan interaksi antara pengguna dengan sistem yang akan dibangun. Pada sistem *self-printing* ini, terdapat dua aktor utama yang saling berinteraksi, yaitu Pengguna (yang berinteraksi melalui perangkat seluler dan layar anjungan) serta Admin (yang berinteraksi melalui *dashboard*). Diagram berikut mendeskripsikan daftar *use case* utama yang dapat dilakukan oleh masing-masing aktor.

![Diagram *use case*](kp/images/usecase-diagram.png)

### Diagram *Activity*

Diagram *activity* memvisualisasikan alur kerja (*workflow*) dari sistem. Karena aplikasi ini memiliki alur proses yang melintasi beberapa perangkat secara *real-time*, mulai dari pemindaian kode QR di anjungan, pengunggahan berkas di perangkat seluler, konfirmasi melalui *dashboard* admin, hingga eksekusi cetak di anjungan.

#### Diagram *Activity* Melihat *Dashboard*

Gambar \ref{fig:activity-melihat-dash} menunjukkan bagaimana Admin membuka halaman *dashboard* dan sistem menampilkan halaman *dashboard* yang berisi ringkasan data statistik penggunaan kertas.

![Diagram \textit{activity} melihat \textit{dashboard} \label{fig:activity-melihat-dash}](kp/images/activity/1.dashboard.png)

#### Diagram *Activity Login*

Gambar \ref{fig:activity-login} menunjukkan bagaimana Admin melakukan proses autentikasi ke dalam sistem guna mendapatkan hak akses penuh ke *dashboard*.

![Diagram \textit{activity login} \label{fig:activity-login}](kp/images/activity/2.login.png)

#### Diagram *Activity* Kelola Permintaan Cetak

Gambar \ref{fig:activity-kelola-printrequest} menunjukkan bagaimana Admin melakukan tinjauan terhadap antrean permintaan cetak dokumen yang masuk dan memberikan persetujuan (*approve*) atau penolakan (*reject*).

![Diagram \textit{activity} kelola permintaan cetak \label{fig:activity-kelola-printrequest}](kp/images/activity/3.kelola-printrequest.png)

#### Diagram *Activity* Unggah Dokumen

Gambar \ref{fig:activity-unggah-dokumen} menunjukkan bagaimana Pengguna melakukan pemindaian kode QR di layar anjungan untuk mengakses halaman pengunggahan dokumen PDF melalui perangkat seluler, yang kemudian akan disinkronisasikan secara otomatis ke antarmuka anjungan.

![Diagram \textit{activity} unggah dokumen \label{fig:activity-unggah-dokumen}](kp/images/activity/4.unggah-dokumen.png)

#### Diagram *Activity Request* Cetak Dokumen

Gambar \ref{fig:activity-request-cetak} menunjukkan bagaimana Pengguna melakukan peninjauan *preview* dokumen serta penyesuaian parameter cetak seperti jumlah salinan, rentang halaman, dan mode warna sebelum mengirimkan permintaan cetak yang akan memperbarui antrean admin secara otomatis.

![Diagram \textit{activity request} cetak dokumen \label{fig:activity-request-cetak}](kp/images/activity/5.request-cetak.png)

#### Diagram *Activity* Cetak Dokumen

Gambar \ref{fig:activity-cetak-dokumen} menunjukkan bagaimana Pengguna melakukan eksekusi pencetakan fisik pada mesin anjungan, yang secara otomatis mengirimkan instruksi ke perangkat printer.

![Diagram \textit{activity} cetak dokumen \label{fig:activity-cetak-dokumen}](kp/images/activity/6.cetak-dokumen.png)

### Diagram *Class*

Diagram *class* pada Gambar \ref{fig:diagram-class} menunjukkan struktur sistem secara statis dengan memperlihatkan kelas-kelas yang ada, atribut, metode, serta hubungan antar objek dalam Web *Self-Printing*. Diagram ini berfungsi sebagai representasi dari struktur basis data dan logika sistem yang akan diimplementasikan.

![Diagram \textit{class} \label{fig:diagram-class}](kp/images/class.png){width=10cm}

### *Entity Relationship Diagram* (ERD)

Perancangan ERD bertujuan untuk memodelkan struktur logis dari basis data yang akan digunakan oleh sistem *backend*. Gambar \ref{fig:erd} memvisualisasikan entitas-entitas utama yang saling berelasi dalam sistem penyimpanan, seperti entitas berkas dan riwayat permintaan cetak. Relasi antar entitas ini dirancang sedemikian rupa untuk menjaga konsistensi data (*data integrity*).

![\textit{Entity relationship diagram} \label{fig:erd}](kp/images/erd.png)

### Data Dictionary

Kamus data ini mendokumentasikan spesifikasi teknis dari setiap tabel basis data secara fisik, yang mencakup nama kolom, tipe data, panjang, serta penentuan *Primary Key* dan *Foreign Key*. Spesifikasi ini menjadi acuan pasti pada saat pembuatan struktur basis data di sisi *server*.

#### Tabel *Users*

Tabel *users* digunakan untuk menyimpan data akun autentikasi Admin.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{12.7cm}
\addtolength{\LTcapwidth}{8\tabcolsep}
\addtolength{\LTcapwidth}{5\arrayrulewidth}
\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13.5cm}
\addtolength{\LTcapwidth}{4\tabcolsep}
\addtolength{\LTcapwidth}{3\arrayrulewidth}
\begin{longtable}{|p{2.7cm}|p{2.6cm}|p{1.9cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel \textit{Users} } \\ \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endfirsthead \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endhead \hline
\endfoot
id & BIGINT (20) & \textit{Primary Key} & ID Unik pengguna \\ \hline
name & VARCHAR (255) & - & Nama lengkap pengguna \\ \hline
email & VARCHAR (255) & - & Alamat \textit{email} (unik) untuk login \\ \hline
password  & VARCHAR (255) & - & Kata sandi terenkripsi \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel *Filetoprints*

Tabel *filetoprints* digunakan untuk menyimpan data berkas yang akan dicetak.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{12.7cm}
\addtolength{\LTcapwidth}{8\tabcolsep}
\addtolength{\LTcapwidth}{5\arrayrulewidth}
\begin{longtable}{|p{2.7cm}|p{2.6cm}|p{1.9cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel \textit{Filetoprints} } \\ \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endfirsthead \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endhead \hline
\endfoot
id & BIGINT (20) & \textit{Primary Key} & ID Unik berkas \\ \hline
filename & VARCHAR (255) & - & Lokasi berkas disimpan \\ \hline
original\_name & VARCHAR (255) & - & Nama asli berkas ketika diunggah \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel *Printrequests*

Tabel *printrequests* digunakan untuk menyimpan data riwayat permintaan cetak beserta konfigurasinya.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{12.7cm}
\addtolength{\LTcapwidth}{8\tabcolsep}
\addtolength{\LTcapwidth}{5\arrayrulewidth}
\begin{longtable}{|p{2.7cm}|p{2.6cm}|p{1.9cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel \textit{Printrequests} } \\ \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endfirsthead \hline
\textbf{Kolom} & \textbf{Tipe Data} & \textbf{\textit{Key}} & \textbf{Keterangan} \\ \hline
\endhead \hline
\endfoot
id & BIGINT (20) & \textit{Primary Key} & ID Unik berkas \\ \hline
filetoprint\_id & BIGINT (20) & \textit{Foreign Key} & FK ke tabel \textit{filetoprints} \\ \hline
original\_name & BIGINT (20) & - & Nama asli berkas ketika diunggah \\ \hline
status & VARCHAR (255) & - & status dari permintaan cetak (\textit{rejected, verified, pending, completed}) \\ \hline
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

## Perancangan Skema Pengujian 

Bagian ini menjelaskan rencana pengujian yang akan dilakukan terhadap sistem *self-printing* guna memastikan kualitas dan fungsionalitas perangkat lunak sesuai dengan persyaratan yang telah ditetapkan.

### Metode Pengujian

Metode pengujian pada penelitian ini terbagi menjadi dua pendekatan utama, yaitu:

1. Pengujian Fungsionalitas (*Black Box Testing*): Pengujian ini berfokus pada fungsionalitas sistem tanpa melibatkan struktur kode internal, dengan merujuk pada standar ISO-IEC-IEEE-29119 untuk kolom-kolom dalam tiap kasus ujinya [@ISO/IEC/IEEE2013].

2. Pengujian Kinerja (*Performance Testing*): Pengujian ini berfokus pada aspek keandalan dan kecepatan respons sistem *real-time*. Pengujian ini mengukur rata-rata waktu respon pengguna (*average user response time*) untuk memvalidasi kecepatan sinkronisasi data melalui protokol WebSocket [@Pressman2015].

### Lingkungan Pengujian

Sebelum melakukan skenario pengujian fungsionalitas, perlu ditetapkan lingkungan pengujian (\textit{testing environment}) yang mencakup perangkat keras (\textit{hardware}) dan perangkat lunak (\textit{software}) yang digunakan. Hal ini bertujuan untuk memastikan bahwa fitur dan pengukuran kinerja dapat berjalan sesuai dengan spesifikasi. Rincian perangkat yang digunakan dapat dilihat pada Tabel \ref{tab:perangkat-keras} dan Tabel \ref{tab:perangkat-lunak}.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{12.5cm}
\addtolength{\LTcapwidth}{6\tabcolsep}
\addtolength{\LTcapwidth}{4\arrayrulewidth}
\begin{longtable}{|p{3.5cm}|p{4.5cm}|p{4.5cm}|}
\caption{Spesifikasi Perangkat Keras (\textit{Hardware})} \label{tab:perangkat-keras} \\ \hline
\textbf{Jenis Perangkat} & \textbf{Merek / Tipe} & \textbf{Peran Pengujian} \\ \hline
\endfirsthead \hline
\textbf{Jenis Perangkat} & \textbf{Merek / Tipe} & \textbf{Peran Pengujian} \\ \hline
\endhead \hline
\endfoot
Laptop / PC & Acer Aspire A314-32 & Perangkat utama, \textit{server} lokal \\ \hline
\textit{Smartphone} & POCO X3 NFC & Perangkat unggah dokumen \\ \hline
\end{longtable}

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{12.5cm}
\addtolength{\LTcapwidth}{6\tabcolsep}
\addtolength{\LTcapwidth}{4\arrayrulewidth}
\begin{longtable}{|p{3.5cm}|p{4.5cm}|p{4.5cm}|}
\caption{Spesifikasi Perangkat Lunak (\textit{Software})} \label{tab:perangkat-lunak} \\ \hline
\textbf{Perangkat Lunak} & \textbf{Spesifikasi / Versi} & \textbf{Keterangan} \\ \hline
\endfirsthead \hline
\textbf{Perangkat Lunak} & \textbf{Spesifikasi / Versi} & \textbf{Keterangan} \\ \hline
\endhead \hline
\endfoot
Sistem Operasi (Laptop) & Windows 10 & Sistem operasi pengembang dan pengujian sisi Admin dan anjungan \\ \hline
Sistem Operasi (HP) & Android 12 / MIUI 14.0.2 & Sistem operasi pengujian sisi pengguna \\ \hline
\textit{Web Browser} (Laptop) & Microsoft Edge & Akses antarmuka \textit{desktop} \\ \hline
\end{longtable}

### Struktur *Black Box Testing*

Setiap pengujian akan didokumentasikan ke dalam sebuah tabel kasus uji dengan format sebagai berikut.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{14cm}
\addtolength{\LTcapwidth}{4\tabcolsep}
\addtolength{\LTcapwidth}{3\arrayrulewidth}
\begin{longtable}{|p{4.5cm}|p{9.5cm}|}
\caption{Definisi Komponen Skema Pengujian} \label{tab:def_pengujian_bbt} \\ \hline
\textbf{Komponen Kolom} & \textbf{Penjelasan Isi} \\ \hline
\endfirsthead \hline
\textbf{Komponen Kolom} & \textbf{Penjelasan Isi} \\ \hline
\endhead \hline
\endfoot
Id Tes & Kode unik untuk mengidentifikasi setiap kasus uji (contoh: TC-01, artinya \textit{test case} 01). \\ \hline
Skenario Pengujian & Langkah-langkah atau urutan tindakan yang dilakukan oleh penguji pada sistem. \\ \hline
Input & Data atau aksi yang dimasukkan oleh pengguna (seperti teks, file, atau klik tombol) untuk menjalankan fungsi. \\ \hline
Output yang Diharapkan & Respon atau keluaran sistem yang dianggap benar secara fungsional terhadap input yang diberikan. \\ \hline
Status & Hasil akhir pengujian untuk menentukan apakah fungsi berjalan sesuai harapan (Sesuai/Tidak Sesuai). \\ \hline
\end{longtable}

### Struktur *Performance Testing*

Untuk pengujian kinerja berbasis *response time*, skenario difokuskan pada pengukuran jeda waktu (*latency*) sinkronisasi. Pengukuran dilakukan dengan mencatat selisih waktu antara pengiriman instruksi HTTP POST (Verifikasi permintaan cetak) dari antarmuka Admin hingga pesan WebSocket diterima dan dirender oleh antarmuka anjungan.

Pengujian ini akan diulang sebanyak 10 kali percobaan untuk mendapatkan nilai rata-rata yang stabil dan akurat. Hasil pengujian akan didokumentasikan dengan struktur tabel sebagai berikut:

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{14cm}
\addtolength{\LTcapwidth}{4\tabcolsep}
\addtolength{\LTcapwidth}{3\arrayrulewidth}
\begin{longtable}{|p{4.5cm}|p{9.5cm}|}
\caption{Definisi Komponen Skema Pengujian} \label{tab:def_pengujian_pt} \\ \hline
\textbf{Komponen Kolom} & \textbf{Penjelasan Isi} \\ \hline
\endfirsthead \hline
\textbf{Komponen Kolom} & \textbf{Penjelasan Isi} \\ \hline
\endhead \hline
\endfoot
Percobaan Ke- & Nomor urut iterasi pengujian (1 hingga 10). \\ \hline
Waktu Mulai & Nilai \textit{timestamp} (\textit{epoch time} dalam satuan milidetik) yang dicatat melalui fungsi Date.now() tepat saat administrator menekan tombol "Verifikasi". \\ \hline
Waktu Selesai & Nilai \textit{timestamp} (\textit{epoch time} dalam satuan milidetik) yang dicatat melalui fungsi Date.now() tepat saat \textit{event listener} WebSocket di sisi anjungan menerima data dan memicu perubahan status tampilan. \\ \hline
Waktu Respon Antarmuka Anjungan (ms) & Durasi total waktu respon (\textit{latency}) dalam satuan milidetik, yang didapatkan dari hasil pengurangan nilai Waktu Selesai dengan Waktu Mulai. \\ \hline
Keterangan & Indikator responsivitas sistem berdasarkan ambang batas waktu respon pengguna. Bernilai "Responsif" jika waktu respon berada di bawah 1.000 ms (1 detik), sesuai dengan standar batas persepsi kenyamanan interaksi manusia dan komputer. \\ \hline
\end{longtable}