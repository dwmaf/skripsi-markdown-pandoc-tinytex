# IMPLEMENTASI DAN PEMBAHASAN

## Implementasi 

Berikut merupakan hasil implementasi tampilan halaman dan penjelasan *backend* dari Web *Self-Printing*. Penjelasan di bawah ini mencakup visualisasi antarmuka pengguna beserta deskripsi fungsionalitas dari setiap komponen yang tersedia pada sistem.

### Halaman Unggah Dokumen

Gambar \ref{fig:hal-anjungan-6} menampilkan antarmuka awal pada layar anjungan saat sistem dalam kondisi siaga. Pada tahap ini, sistem belum menerima data dokumen apa pun. Antarmuka hanya menampilkan sebuah instruksi dan kode QR dinamis yang harus dipindai oleh pengguna menggunakan perangkat seluler untuk memulai sesi pencetakan secara mandiri.

![Halaman Anjungan \label{fig:hal-anjungan-6}](kp/images/hasil/2-anjungan-6.png)

Setelah pengguna memindai kode QR dari layar anjungan, *browser* pada perangkat seluler pengguna akan secara otomatis diarahkan ke halaman pengunggahan dokumen seperti yang ditunjukkan pada Gambar \ref{fig:hal-unggah-doc-1}. Melalui antarmuka ini, pengguna dapat memilih file berekstensi PDF dari penyimpanan perangkat mereka untuk diunggah ke peladen (server).

![Halaman Unggah Dokumen di Perangkat Pengguna \label{fig:hal-unggah-doc-1}](kp/images/hasil/1-unggah-doc-1.png)

Dari sisi backend, proses pengunggahan dokumen tersebut ditangani oleh fungsi khusus di dalam controller. Gambar \ref{fig:source-1} menunjukkan potongan kode (source code) yang bertugas menerima request berjenis POST dari perangkat pengguna. Logika pada kode ini mencakup validasi tipe dokumen, penyimpanan file PDF ke dalam direktori server, dan pencatatan data ke dalam basis data. Hal yang paling krusial pada fungsi ini terdapat di baris akhir, di mana sistem memicu (trigger) sebuah event untuk memberikan sinyal bahwa ada dokumen baru yang berhasil masuk.

![Source Code Menangani Route POST Unggah Dokumen \label{fig:source-1}](kp/images/hasil/10-source-1-upload.png)

Pemicu dari controller tersebut kemudian dilanjutkan ke dalam sebuah Class Event khusus yang ditunjukkan pada Gambar \ref{fig:source-2}. Class ini diimplementasikan menggunakan infrastruktur WebSocket (dalam hal ini memanfaatkan paket Laravel Reverb). Fungsinya adalah melakukan siaran data (broadcasting) ke saluran (channel) yang sedang didengarkan oleh perangkat anjungan. Saat event ini tereksekusi, *browser* anjungan akan menangkap sinyal real-time tersebut dan secara otomatis memuat ulang (reload) antarmukanya untuk menampilkan pratinjau dokumen tanpa memerlukan interaksi fisik dari pengguna.

![Source Code Class Websocket Upload File \label{fig:source-2}](kp/images/hasil/10-source-2-event-file-upload.png)


### Request Cetak Dokumen

Setelah sinyal real-time dari event pengunggahan dokumen berhasil ditangkap oleh *browser* anjungan, antarmuka anjungan secara otomatis memuat ulang (reload) dan menampilkan daftar file yang siap diproses seperti pada Gambar \ref{fig:hal-anjungan-1}. Pada tahapan ini, tersedia dua aksi utama bagi pengguna: tombol berlogo printer untuk membuka modal konfigurasi cetak, dan tombol sampah untuk menghapus dokumen dari antrean sementara di anjungan.

![Halaman Anjungan \label{fig:hal-anjungan-1}](kp/images/hasil/2-anjungan-1.png)

Aksi penekanan tombol printer pada Gambar \ref{fig:hal-anjungan-1} akan memunculkan jendela modal konfigurasi yang ditunjukkan secara detail pada Gambar \ref{fig:hal-anjungan-2} (bagian atas) dan Gambar \ref{fig:hal-anjungan-3} (bagian bawah). Melalui antarmuka ini, pengguna disuguhkan fitur pratinjau (preview) dokumen PDF di sisi kiri yang dapat digulir (scroll). Sementara di sisi kanan, pengguna wajib mengisi parameter pencetakan meliputi ukuran kertas, pilihan halaman (seluruh halaman atau kustom), jumlah salinan (copy), serta mode warna (berwarna atau hitam putih). Proses konfigurasi diakhiri dengan menekan tombol Request.

![Modal Konfigurasi Cetak Bagian Atas \label{fig:hal-anjungan-2}](kp/images/hasil/2-anjungan-2.png)

![Modal Konfigurasi Cetak Bagian Bawah \label{fig:hal-anjungan-3}](kp/images/hasil/2-anjungan-3.png)

Secara teknis di sisi backend, permintaan konfigurasi dari pengguna ditangani melalui route POST yang detail kodenya terlihat pada Gambar \ref{fig:source-3}. Fungsi ini memproses data input konfigurasi dan menyimpannya ke dalam basis data dengan status awal pencetakan. Baris akhir pada potongan kode ini merupakan poin krusial, di mana sistem memicu (trigger) sebuah event baru yang berfungsi memberikan notifikasi secara real-time kepada pihak Admin melalui protokol WebSocket.

![Source Code Menangani Route POST Request Cetak \label{fig:source-3}](kp/images/hasil/10-source-3-submit-request.png)

Gambar \ref{fig:source-2} menunjukkan implementasi Class Event WebSocket yang dipanggil oleh logika pada Gambar \ref{fig:source-3} sebelumnya. Class ini bertugas untuk menyiarkan (broadcasting) sinyal notifikasi melalui saluran (channel) yang sedang dipantau oleh panel Admin. Saat sinyal ini diterima oleh perangkat Admin, antarmuka halaman kelola permintaan cetak Admin akan secara otomatis memuat ulang tanpa perlu menyegarkan (refresh) halaman manual, sehingga Admin dapat langsung mengetahui adanya permintaan cetak baru yang memerlukan persetujuan.

![Source Code Class Websocket Permintaan Cetak Baru \label{fig:source-2}](kp/images/hasil/10-source-9-event-new-printreq.png)

### Halaman Kelola Permintaan Cetak

Pada sisi administrator, sistem menyediakan modul khusus untuk mengelola antrean permintaan cetak yang masuk. Gambar \ref{fig:source-4} menunjukkan potongan kode sumber yang menangani pemanggilan halaman indeks verifikasi. Fungsi ini bertugas mengambil data permintaan cetak dengan status tertentu dari basis data untuk kemudian ditampilkan pada antarmuka admin.

![Source Code Buka Halaman Kelola Permintaan Cetak \label{fig:source-4}](kp/images/hasil/10-source-4-index-verify.png)

Antarmuka yang dihasilkan dari logika tersebut dapat dilihat pada Gambar \ref{fig:hal-kelola-cetak-req}. Halaman ini menampilkan daftar informasi detail mengenai siapa yang meminta cetak beserta konfigurasi dokumennya. Admin diberikan otoritas penuh untuk meninjau permintaan tersebut dan mengambil keputusan melalui dua opsi tindakan utama, yaitu tombol Acc (setuju) atau Reject (tolak).

![Halaman Kelola Permintaan Cetak \label{fig:hal-kelola-cetak-req}](kp/images/hasil/3-kelola-cetak-req-1.png)

Apabila Admin menekan tombol Acc, sistem akan memperbarui status permintaan tersebut di dalam basis data. Perubahan visual pada antarmuka admin setelah tindakan persetujuan dilakukan ditunjukkan pada Gambar \ref{fig:hal-kelola-cetak-req} (Tampilan Disetujui), di mana status permintaan akan berubah untuk menandakan bahwa dokumen telah siap dieksekusi oleh pengguna di mesin anjungan.

![Tampilan Permintaan Cetak Disetujui \label{fig:hal-kelola-cetak-req}](kp/images/hasil/3-kelola-cetak-req-2.png)

Secara teknis, pemrosesan keputusan Admin ini ditangani oleh route POST yang kodenya tertera pada Gambar \ref{fig:source-5}. Fungsi ini tidak hanya bertugas melakukan pembaruan status pada tabel permintaan cetak, tetapi juga memiliki instruksi pada baris akhirnya untuk memicu (trigger) sebuah event update. Event inilah yang bertanggung jawab mengirimkan sinyal kepada perangkat anjungan agar tombol cetak pada layar pengguna berubah menjadi aktif (hijau).

![Source Code Menangani Route POST Acc/Reject Permintaan Cetak \label{fig:source-5}](kp/images/hasil/10-source-5-func-verify.png)

Sinkronisasi status tersebut dimungkinkan melalui Class Event WebSocket yang ditunjukkan pada Gambar \ref{fig:source-2}. Berbeda dengan event sebelumnya, class ini dirancang untuk menyiarkan sinyal pembaruan status ke beberapa saluran sekaligus. Hal ini mengakibatkan terjadinya pemuatan ulang (reload) secara otomatis baik pada halaman Admin (untuk memperbarui daftar antrean) maupun pada halaman anjungan (untuk memberikan umpan balik visual kepada pengguna bahwa permintaan mereka telah disetujui).

![Source Code Class Websocket Permintaan Diperbarui \label{fig:source-2}](kp/images/hasil/10-source-10-event-printreq-updated.png)

### Cetak Dokumen

Sebagai hasil dari pembaruan status melalui protokol WebSocket, layar anjungan akan memberikan umpan balik visual secara langsung kepada pengguna. Seperti yang diilustrasikan pada Gambar \ref{fig:hal-anjungan-4}, indikator persetujuan direpresentasikan melalui perubahan warna pada tombol aksi. Jika Admin memberikan persetujuan (Acc), tombol print akan berubah menjadi hijau, menandakan dokumen siap dicetak. Sebaliknya, jika permintaan ditolak (Reject), tombol akan berubah menjadi merah.

![Halaman Anjungan jika ada Acc \label{fig:hal-anjungan-4}](kp/images/hasil/2-anjungan-4.png)

Ketika pengguna menekan tombol print berwarna hijau tersebut, sistem akan menampilkan jendela modal eksekusi akhir seperti pada Gambar \ref{fig:hal-anjungan-5}. Antarmuka ini dirancang sebagai tahap konfirmasi final, di mana sisi kiri menampilkan kembali pratinjau (preview) dokumen, sedangkan sisi kanan merangkum informasi konfigurasi cetak yang telah dikunci (tidak dapat diubah lagi). Pengguna kemudian menekan tombol Print untuk memicu mesin printer fisik.

![Modal Cetak Dokumen \label{fig:hal-anjungan-5}](kp/images/hasil/2-anjungan-5.png)

Dari sisi peladen (server), instruksi pencetakan akhir ini ditangani oleh sebuah route POST yang detail kodenya ditunjukkan pada Gambar \ref{fig:source-6}. Fungsi ini mengeksekusi perintah print pada tingkat sistem operasi (hardware) dan sekaligus memperbarui status permintaan di dalam basis data dari approved menjadi completed. Pada baris akhir kode tersebut, sistem kembali memicu event broadcasting untuk memastikan data di seluruh antarmuka tetap sinkron.

![Source Code Menangani Route POST Print Dokumen \label{fig:source-6}](kp/images/hasil/10-source-6-print.png)

Sinyal broadcasting tersebut akan ditangkap oleh perangkat Admin, yang memicu pemuatan ulang pada halaman kelola permintaan cetak. Gambar \ref{fig:hal-kelola-cetak-req-3} menampilkan hasil akhir dari siklus sistem ini, di mana status antrean pada panel Admin secara otomatis berubah menjadi completed. Hal ini menandakan bahwa proses Web-to-Print telah selesai dieksekusi secara keseluruhan.

![Tampilan Permintaan Cetak Selesai Cetak \label{fig:hal-kelola-cetak-req-3}](kp/images/hasil/3-kelola-cetak-req-3.png)

### Halaman Login

Untuk menjaga keamanan operasional dan memastikan bahwa hanya pihak berwenang yang dapat menyetujui dokumen, sistem menerapkan mekanisme otentikasi. Sebelum dapat mengakses fitur dashboard analitik maupun halaman kelola permintaan cetak, pengguna dengan peran Administrator atau Mentor diwajibkan untuk masuk ke dalam sistem. Gambar \ref{fig:hal-login-1} menampilkan antarmuka halaman login yang dirancang sebagai pintu masuk eksklusif bagi Admin.

![Halaman Login \label{fig:hal-login-1}](kp/images/hasil/5-login-1.png)

Proses validasi kredensial pada antarmuka tersebut diproses lebih lanjut di sisi backend melalui route POST, yang detail kodenya ditunjukkan pada Gambar \ref{fig:source-7}. Potongan kode sumber ini bertanggung jawab untuk mencocokkan data masukan berupa nama pengguna (username) atau surel (email) beserta kata sandi (password) dengan catatan identitas yang tersimpan di dalam basis data. Jika kredensial dinyatakan valid, sistem akan menerbitkan sesi akses (session) yang sah dan mengarahkan (redirect) Admin menuju halaman manajemen utama.

![Source Code Menangani Route POST Login \label{fig:source-7}](kp/images/hasil/10-source-7-login.png)

### Halaman *Dashboard*
Setelah proses autentikasi pada halaman login berhasil dilalui, administrator akan secara otomatis diarahkan ke halaman utama atau Dashboard. Antarmuka ini berfungsi sebagai pusat informasi dan kendali (control center) bagi Admin dalam memantau operasional sistem self-printing.

![Halaman \textit{Dashboard} Admin \label{fig:hal-dashboard-1}](kp/images/hasil/6-dashboard-1.png)

Gambar \ref{fig:hal-dashboard-1} menampilkan antarmuka Dashboard Admin. Pada tata letak antarmuka ini, terdapat panel navigasi (sidebar) yang memuat dua menu utama. Menu pertama adalah Dashboard (halaman yang sedang aktif), yang menampilkan visualisasi data statistik seperti tren dan riwayat penggunaan kertas. Sementara itu, menu kedua berfungsi sebagai pintasan navigasi bagi Admin untuk beralih ke halaman Kelola Permintaan Cetak guna memverifikasi antrean dokumen yang masuk.

Dari sisi teknis, proses pemuatan halaman dan kalkulasi data statistik pada dashboard ini ditangani oleh sebuah fungsi pengontrol (controller) yang ditunjukkan pada Gambar \ref{fig:source-8}. Kode sumber tersebut bertugas untuk melakukan query ke basis data, mengambil data akumulatif dari riwayat pencetakan yang telah berstatus completed, dan meneruskannya ke antarmuka pengguna untuk dirender menjadi representasi visual.

![Source Code Menangani Route POST Login \label{fig:source-8}](kp/images/hasil/10-source-8-dashboard.png)

## Pengujian

Setelah seluruh antarmuka dan logika sistem selesai diimplementasikan, tahap selanjutnya adalah melakukan pengujian. Pengujian ini menggunakan metode *Black Box Testing*, yang bertujuan untuk memvalidasi apakah setiap fitur, masukan, dan keluaran pada sistem telah berjalan sesuai dengan spesifikasi kebutuhan sistem yang didefinisikan sebelumnya.

### Hasil Pengujian Sisi Admin

Pengujian ini difokuskan pada fungsionalitas yang melibatkan aktor Admin. Adapun rincian skenario beserta status keberhasilan dari pengujian sisi Admin pada Tabel \ref{tab:pengujian-admin} berikut.

\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Admin} \label{tab:pengujian-admin} \\
\hline
ID Test & Skenario Pengujian & Input & Output yang diharapkan & Status \\ \hline
TC-1 & Autentikasi sistem & membuka halaman login dan mengisi kredensial (*email* dan *password*) & Berhasil masuk ke *dashboard* & Sesuai \\ \hline
TC-2 & Visualisasi Statistik Data pada *Dashboard* Admin & Mengakses halaman dashboard admin & Menampilkan grafik dan widget data & Sesuai \\ \hline
TC-3 & Mengelola permintaan cetak & Menyetujui atau menolak permintaan cetak yang masuk & Perubahannya langsung tersinkron dengan layar anjungan & Sesuai \\ \hline
\end{longtable}

### Hasil Pengujian Sisi Pengguna

Pengujian ini difokuskan pada fungsionalitas yang melibatkan aktor Pengguna. Adapun rincian skenario beserta status keberhasilan dari pengujian sisi Pengguna pada Tabel \ref{tab:pengujian-pengguna} berikut.

\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Pengguna} \label{tab:pengujian-pengguna} \\
\hline
ID Test & Skenario Pengujian & Input & Output yang diharapkan & Status \\ \hline
TC-4 & unggah dokumen & scan qr code utk buka webnya di hp dan unggah dokumen & data berkas itu masuk ke basis data tabel `filestoprint` dan perubahan langsung tersinkron di layar anjungan & Sesuai \\ \hline
TC-5 & Request Cetak Dokumen & tekan tombol print di file yg diunggah, isi konfigurasi, tekan tombol request & data berkas itu dan konfigurasi cetaknya masuk ke basis data tabel `printrequests` dan perubahan langsung tersinkron di halaman admin & Sesuai \\ \hline
TC-6 & Cetak dokumen & tekan tombol print pada file yang udh di acc admin, tekan tombol print di modal yang muncul & file tercetak di printer dan perubahan langsung tersinkron di halaman admin (status permintaan cetaknya dari "accepted" jadi "completed" ) & Sesuai \\ \hline
\end{longtable}