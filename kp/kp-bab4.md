# IMPLEMENTASI DAN PEMBAHASAN

\FrameImagestrue

## Implementasi 

Berikut merupakan hasil implementasi tampilan halaman dan penjelasan *backend* dari Web *Self-Printing*. Penjelasan di bawah ini mencakup visualisasi antarmuka Pengguna beserta deskripsi fungsionalitas dari setiap komponen yang tersedia pada sistem.

### Halaman Unggah Dokumen

Gambar \ref{fig:hal-anjungan-6} menampilkan antarmuka awal pada layar anjungan saat sistem dalam kondisi siaga. Pada tahap ini, sistem belum menerima data dokumen apa pun. Antarmuka hanya menampilkan sebuah instruksi dan kode QR dinamis yang harus dipindai oleh Pengguna menggunakan perangkat seluler untuk memulai sesi pencetakan secara mandiri.

![Halaman anjungan \label{fig:hal-anjungan-6}](kp/images/hasil/2-anjungan-6.png)

Setelah Pengguna memindai kode QR dari layar anjungan, *browser* pada perangkat seluler Pengguna akan secara otomatis diarahkan ke halaman pengunggahan dokumen seperti yang ditunjukkan pada Gambar \ref{fig:hal-unggah-doc-1}. Melalui antarmuka ini, Pengguna dapat memilih file berekstensi PDF dari penyimpanan perangkat mereka untuk diunggah ke *server*.

![Halaman unggah dokumen di perangkat Pengguna \label{fig:hal-unggah-doc-1}](kp/images/hasil/1-unggah-doc-1.png){width=8cm}

Dari sisi backend, proses pengunggahan dokumen tersebut ditangani oleh fungsi khusus di dalam *controller*. Gambar \ref{fig:source-1} menunjukkan potongan kode (*source code*) yang bertugas menerima *request* berjenis POST dari perangkat Pengguna. Logika pada kode ini mencakup validasi tipe dokumen, penyimpanan berkas PDF ke dalam direktori *server*, dan pencatatan data ke dalam basis data. Di baris akhir, sistem memicu sebuah *event* untuk memberikan sinyal bahwa ada dokumen baru yang berhasil masuk.

![\textit{Source code} untuk menangani unggah dokumen \label{fig:source-1}](kp/images/hasil/10-source-1-upload.png)

Pemicu dari *controller* tersebut kemudian dilanjutkan ke dalam sebuah *class event* khusus yang ditunjukkan pada Gambar \ref{fig:source-2}. Class ini diimplementasikan menggunakan infrastruktur WebSocket (dalam hal ini memanfaatkan paket Laravel Reverb). Fungsinya adalah melakukan siaran data (*broadcasting*) ke saluran (*channel*) yang sedang didengarkan oleh perangkat anjungan. Saat *event* ini tereksekusi, *browser* anjungan akan menangkap sinyal *real-time* tersebut dan secara otomatis memuat ulang (*reload*) antarmukanya untuk menampilkan pratinjau dokumen tanpa memerlukan interaksi fisik dari Pengguna.

![\textit{Source code class} bbsocket unggah dokumen \label{fig:source-2}](kp/images/hasil/10-source-2-event-file-upload.png)

### *Request* Cetak Dokumen

Setelah sinyal *real-time* dari *event* pengunggahan dokumen berhasil ditangkap oleh *browser* anjungan, antarmuka anjungan secara otomatis *reload* dan menampilkan daftar dokumen yang siap diproses seperti pada Gambar \ref{fig:hal-anjungan-1}. Pada tahapan ini, tersedia dua aksi utama bagi Pengguna, tombol berlogo printer untuk membuka modal konfigurasi cetak, dan tombol sampah untuk menghapus dokumen dari antrean sementara di anjungan.

![Halaman anjungan \label{fig:hal-anjungan-1}](kp/images/hasil/2-anjungan-1.png)

Aksi penekanan tombol printer pada Gambar \ref{fig:hal-anjungan-1} akan menampilkan jendela modal konfigurasi yang ditunjukkan pada Gambar \ref{fig:hal-anjungan-2} (bagian atas) dan Gambar \ref{fig:hal-anjungan-3} (bagian bawah). Melalui antarmuka ini, Pengguna dapat melihat pratinjau (*preview*) dokumen PDF di sisi kiri yang dapat digulir (*scroll*). Sementara di sisi kanan, Pengguna wajib mengisi parameter pencetakan meliputi ukuran kertas, pilihan halaman (seluruh halaman atau kustom), jumlah salinan (copy), serta mode warna (berwarna atau hitam putih). Proses konfigurasi diakhiri dengan menekan tombol Request.

![Modal konfigurasi cetak bagian atas \label{fig:hal-anjungan-2}](kp/images/hasil/2-anjungan-2.png)

![Modal konfigurasi cetak bagian bawah \label{fig:hal-anjungan-3}](kp/images/hasil/2-anjungan-3.png)

Secara teknis di sisi *backend*, permintaan konfigurasi dari Pengguna ditangani melalui *route* POST yang kodenya terlihat pada Gambar \ref{fig:source-3}. Fungsi ini memproses data input konfigurasi dan menyimpannya ke dalam basis data dengan status *pending*. kemudian sistem memicu sebuah *event* yang memberikan notifikasi secara *real-time* kepada pihak Admin melalui protokol WebSocket.

![\textit{Source code} untuk permintaan cetak baru \label{fig:source-3}](kp/images/hasil/10-source-3-submit-request.png)

Gambar \ref{fig:source-4} menunjukkan *class event* WebSocket yang dipanggil oleh logika pada Gambar \ref{fig:source-3} sebelumnya. *Class* ini bertugas untuk melakukan *broadcasting* sinyal notifikasi melalui *channel* yang sedang dipantau oleh *dashboard* Admin. Saat sinyal ini diterima oleh perangkat Admin, antarmuka halaman kelola permintaan cetak Admin akan secara otomatis *reload*, sehingga Admin dapat langsung mengetahui adanya permintaan cetak baru yang memerlukan persetujuan.

![\textit{Source code class} Websocket permintaan cetak \label{fig:source-4}](kp/images/hasil/10-source-9-event-new-printreq.png)

### Halaman Kelola Permintaan Cetak

Pada sisi Admin, sistem menyediakan modul khusus untuk mengelola antrean permintaan cetak yang masuk. Gambar \ref{fig:source-5} menunjukkan potongan *source code* yang menangani pemanggilan halaman kelola permintaan cetak. Fungsi ini bertugas mengambil data permintaan cetak dari basis data untuk kemudian ditampilkan pada antarmuka Admin.

![\textit{Source code} untuk buka halaman kelola permintaan cetak baru \label{fig:source-5}](kp/images/hasil/10-source-4-index-verify.png)

Antarmuka yang dihasilkan dari logika tersebut dapat dilihat pada Gambar \ref{fig:hal-kelola-cetak-req}. Halaman ini menampilkan daftar informasi detail mengenai siapa yang meminta cetak beserta konfigurasi dokumennya. Admin diberikan otoritas penuh untuk meninjau permintaan tersebut dan mengambil keputusan melalui dua opsi tindakan utama, yaitu menyetujui (dilambangkan dengan tombol warna hijau dengan tanda centang) atau menolak (dilambangkan dengan tombol warna merah dengan tanda silang).

![Halaman kelola permintaan cetak \label{fig:hal-kelola-cetak-req}](kp/images/hasil/3-kelola-cetak-req-1.png)

Apabila Admin menekan tombol centang (setuju), sistem akan memperbarui status permintaan tersebut di dalam basis data. Perubahan visual pada antarmuka Admin setelah tindakan persetujuan dilakukan ditunjukkan pada Gambar \ref{fig:hal-kelola-cetak-req-acc} (permintaan cetak disetujui), di mana status permintaan akan berubah untuk menandakan bahwa dokumen telah siap dieksekusi oleh Pengguna di mesin anjungan.

![Tampilan permintaan cetak disetujui \label{fig:hal-kelola-cetak-req-acc}](kp/images/hasil/3-kelola-cetak-req-2.png)

Gambar \ref{fig:source-6} menunjukkan *source code* yang menangani pemrosesan keputusan Admin. Fungsi ini tidak hanya bertugas melakukan pembaruan status pada tabel permintaan cetak, tetapi juga memiliki instruksi pada baris akhirnya untuk memicu sebuah *event* yang bertanggung jawab mengirimkan sinyal kepada perangkat anjungan agar tombol cetak pada layar Pengguna berubah menjadi aktif (hijau).

![\textit{Source code} untuk verifikasi permintaan cetak \label{fig:source-6}](kp/images/hasil/10-source-5-func-verify.png)

Sinkronisasi status tersebut dimungkinkan melalui *class event* WebSocket yang ditunjukkan pada Gambar \ref{fig:source-7}. *Class* ini menyiarkan sinyal pembaruan status ke beberapa *channel* sekaligus. Hal ini mengakibatkan terjadinya *reload* secara otomatis baik pada halaman Admin (untuk memperbarui daftar antrean) maupun pada halaman anjungan (untuk memberikan umpan balik visual kepada Pengguna bahwa permintaan mereka telah disetujui).

![\textit{Source code class} Websocket permintaan cetak diperbarui \label{fig:source-7}](kp/images/hasil/10-source-10-event-printreq-updated.png)

### Cetak Dokumen

Sebagai hasil dari pembaruan status melalui protokol WebSocket, layar anjungan akan memberikan umpan balik visual secara langsung kepada Pengguna. Seperti yang diilustrasikan pada Gambar \ref{fig:hal-anjungan-4}, indikator persetujuan direpresentasikan melalui perubahan warna pada tombol aksi. Jika Admin memberikan persetujuan, tombol print akan berubah menjadi hijau, menandakan dokumen siap dicetak. Sebaliknya, jika permintaan ditolak, tombol akan berubah menjadi merah.

![Halaman anjungan jika permintaan cetak disetujui \label{fig:hal-anjungan-4}](kp/images/hasil/2-anjungan-4.png)

Ketika Pengguna menekan tombol print berwarna hijau tersebut, sistem akan menampilkan *preview* seperti pada Gambar \ref{fig:hal-anjungan-5}. Antarmuka ini dirancang sebagai tahap konfirmasi final, di mana sisi kiri menampilkan kembali *preview* dokumen, sedangkan sisi kanan merangkum informasi konfigurasi cetak yang tidak dapat diubah lagi. Pengguna kemudian menekan tombol "CETAK SEKARANG" untuk memicu mesin printer fisik mencetak dokumennya.

![\textit{Preview} cetak dokumen \label{fig:hal-anjungan-5}](kp/images/hasil/2-anjungan-5.png)

Gambar \ref{fig:source-8} menunjukkan *source code* yang menangani *route* POST instruksi pencetakan dokumen. Fungsi ini mengeksekusi perintah *print* pada tingkat sistem operasi dan sekaligus memperbarui status permintaan di dalam basis data dari *verified* menjadi *completed*. Pada baris akhir kode tersebut, sistem kembali memicu *event broadcasting* untuk memastikan data di seluruh antarmuka tetap sinkron.

![\textit{Source code} untuk \textit{print} dokumen \label{fig:source-8}](kp/images/hasil/10-source-6-print.png)

Sinyal *broadcasting* tersebut akan ditangkap oleh perangkat Admin, yang memicu *reload* pada halaman kelola permintaan cetak. Gambar \ref{fig:hal-kelola-cetak-req-3} menampilkan hasil akhir dari siklus sistem ini, di mana status antrean pada panel Admin secara otomatis berubah menjadi *completed*. Hal ini menandakan bahwa proses *Web-to-Print* telah selesai dieksekusi secara keseluruhan.

![Tampilan dokumen selesai dicetak di halaman kelola permintaan cetak \label{fig:hal-kelola-cetak-req-3}](kp/images/hasil/3-kelola-cetak-req-3.png)

### Halaman *Login*

Untuk menjaga keamanan operasional dan memastikan bahwa hanya pihak berwenang yang dapat menyetujui dokumen, sistem menerapkan mekanisme autentikasi. Sebelum dapat mengakses fitur *dashboard* maupun halaman kelola permintaan cetak, Admin diwajibkan untuk login. Gambar \ref{fig:hal-login-1} menampilkan antarmuka halaman login yang dirancang sebagai pintu masuk eksklusif bagi Admin.

![Halaman \textit{login} \label{fig:hal-login-1}](kp/images/hasil/5-login-1.png)

Proses validasi kredensial pada antarmuka tersebut diproses lebih lanjut di sisi *backend* melalui route POST. Gambar \ref{fig:source-9} menunjukkan *source code* yang bertanggung jawab untuk mencocokkan data masukan berupa *email* beserta *password* dengan tabel *users* di dalam basis data. Jika kredensial dinyatakan valid, sistem akan membuat *session* yang sah dan mengarahkan Admin menuju halaman *dashboard*.

![\textit{Source code} untuk \textit{login} \label{fig:source-9}](kp/images/hasil/10-source-7-login.png)

### Halaman *Dashboard*

Setelah proses autentikasi pada halaman *login* berhasil dilalui, Admin akan secara otomatis diarahkan ke halaman *Dashboard*. Antarmuka ini berfungsi sebagai pusat informasi dan kendali bagi Admin dalam memantau operasional sistem *self-printing*.

![Halaman \textit{dashboard} Admin \label{fig:hal-dashboard-1}](kp/images/hasil/6-dashboard-1.png)

Gambar \ref{fig:hal-dashboard-1} menampilkan antarmuka Dashboard Admin. Pada tata letak antarmuka ini, terdapat panel *sidebar* yang memuat dua menu utama. Menu pertama adalah *Dashboard* (halaman yang sedang aktif), yang menampilkan visualisasi data statistik seperti tren dan riwayat penggunaan kertas. Sementara itu, menu kedua untuk beralih ke halaman kelola permintaan cetak guna memverifikasi antrean dokumen yang masuk.

Dari sisi teknis, proses pemuatan halaman dan kalkulasi data statistik pada *dashboard* ini ditangani oleh sebuah fungsi yang ditunjukkan pada Gambar \ref{fig:source-10}. *Source code* tersebut bertugas untuk melakukan *query* ke basis data, mengambil data akumulatif dari riwayat pencetakan yang telah berstatus *completed*, dan meneruskannya ke antarmuka Admin untuk diubah menjadi representasi visual.

![\textit{Source code} untuk buka halaman \textit{dashboard} \label{fig:source-10}](kp/images/hasil/10-source-8-dashboard.png)

## *Black Box Testing*

Setelah seluruh antarmuka dan logika sistem selesai diimplementasikan, tahap selanjutnya adalah melakukan pengujian. Pengujian ini menggunakan metode *Black Box Testing*, yang bertujuan untuk memvalidasi apakah setiap fitur, masukan, dan keluaran pada sistem telah berjalan sesuai dengan spesifikasi kebutuhan sistem yang didefinisikan sebelumnya.

### Hasil Pengujian Sisi Admin

Pengujian ini difokuskan pada fungsionalitas yang melibatkan aktor Admin. Adapun rincian skenario beserta status keberhasilan dari pengujian sisi Admin pada Tabel \ref{tab:pengujian-admin} berikut.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13cm}
\addtolength{\LTcapwidth}{10\tabcolsep}
\addtolength{\LTcapwidth}{6\arrayrulewidth}
\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Admin} \label{tab:pengujian-admin} \\ \hline
\textbf{ID Tes} & \textbf{Skenario Pengujian} & \textbf{Input} & \textbf{Output yang diharapkan} & \textbf{Status} \\ \hline
\endfirsthead \hline
\textbf{ID Tes} & \textbf{Skenario Pengujian} & \textbf{Input} & \textbf{Output yang diharapkan} & \textbf{Status} \\ \hline
\endhead \hline
\endfoot
TC-1 & Autentikasi sistem & membuka halaman \textit{login} dan mengisi kredensial (\textit{email} dan \textit{password}) & Berhasil masuk ke \textit{dashboard} & Sesuai \\ \hline
TC-2 & Visualisasi statistik data pada \textit{dashboard} Admin & Mengakses halaman \textit{dashboard} Admin & Menampilkan grafik dan \textit{widget} data & Sesuai \\ \hline
TC-3 & Mengelola permintaan cetak & Menyetujui atau menolak permintaan cetak yang masuk & Perubahannya langsung tersinkron dengan layar anjungan & Sesuai \\ \hline
\end{longtable}

### Hasil Pengujian Sisi Pengguna

Pengujian ini difokuskan pada fungsionalitas yang melibatkan aktor Pengguna. Adapun rincian skenario beserta status keberhasilan dari pengujian sisi Pengguna pada Tabel \ref{tab:pengujian-Pengguna} berikut.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13cm}
\addtolength{\LTcapwidth}{10\tabcolsep}
\addtolength{\LTcapwidth}{6\arrayrulewidth}
\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Pengguna} \label{tab:pengujian-Pengguna} \\ \hline
\textbf{ID Tes} & \textbf{Skenario Pengujian} & \textbf{Input} & \textbf{Output yang diharapkan} & \textbf{Status} \\ \hline
\endfirsthead \hline
\textbf{ID Tes} & \textbf{Skenario Pengujian} & \textbf{Input} & \textbf{Output yang diharapkan} & \textbf{Status} \\ \hline
\endhead \hline
\endfoot
TC-4 & Unggah dokumen & \textit{Scan} QR \textit{code} utk buka webnya di hp dan unggah dokumen & data dokumen itu masuk ke basis data tabel \textit{filestoprints} dan perubahan langsung tersinkron di layar anjungan & Sesuai \\ \hline
TC-5 & \textit{Request} cetak dokumen & Tekan tombol \textit{print} di dokumen yg diunggah, isi konfigurasi, tekan tombol \textit{submit request} & data dokumen itu dan konfigurasi cetaknya masuk ke basis data tabel \textit{printrequests} dan perubahan langsung tersinkron di halaman admin & Sesuai \\ \hline
TC-6 & Cetak dokumen & Tekan tombol \textit{print} pada dokumen yang udh di setujui Admin, tekan tombol \textit{print} di \textit{preview} yang muncul & Dokumen tercetak di printer dan perubahan langsung tersinkron di halaman admin (status permintaan cetaknya dari "\textit{verified}" jadi "\textit{completed}" ) & Sesuai \\ \hline
\end{longtable}

## *Performance Testing*

### Hasil Pengujian *Latency*

Berikut adalah hasil pengukuran waktu respon sinkronisasi data.

\captionsetup[longtable]{justification=raggedright, singlelinecheck=false}
\setlength{\LTcapwidth}{13cm}
\addtolength{\LTcapwidth}{10\tabcolsep}
\addtolength{\LTcapwidth}{6\arrayrulewidth}
\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Latency} \label{tab:pengujian-latency} \\ \hline
\textbf{Percobaan Ke-} & \textbf{Aksi Administrator} & \textbf{Waktu Respon UI Anjungan (ms)} & \textbf{Keterangan} \\ \hline
\endfirsthead \hline
\textbf{Percobaan Ke-} & \textbf{Aksi Administrator} & \textbf{Waktu Respon UI Anjungan (ms)} & \textbf{Keterangan} \\ \hline
\endhead \hline
\endfoot
1 & Klik tombol "Verifikasi" & 45 & Sangat Cepat \\ \hline
2 & Klik tombol "Verifikasi" & 52 & Sangat Cepat \\ \hline
3 & Klik tombol "Verifikasi" & 48 & Sangat Cepat \\ \hline
4 & Klik tombol "Verifikasi" & 65 & Sangat Cepat \\ \hline
5 & Klik tombol "Verifikasi" & 50 & Sangat Cepat \\ \hline
6 & Klik tombol "Verifikasi" & 42 & Sangat Cepat \\ \hline
7 & Klik tombol "Verifikasi" & 70 & Sangat Cepat \\ \hline
8 & Klik tombol "Verifikasi" & 55 & Sangat Cepat \\ \hline
9 & Klik tombol "Verifikasi" & 48 & Sangat Cepat \\ \hline
10 & Klik tombol "Verifikasi" & 45 & Sangat Cepat \\ \hline
\textbf{Rata-rata} &  & 52 ms & Lolos Kriteria

### Analisis Hasil Pengujian

Berdasarkan data pada tabel di atas, diperoleh rata-rata waktu respon sebesar 52 ms. Mengacu pada standar interaksi pengguna, waktu respon di bawah 100 ms (0,1 detik) memberikan ilusi bahwa sistem bereaksi secara instan tanpa adanya jeda operasional. Hasil ini mengonfirmasi bahwa penggunaan kombinasi backend Laravel dan protokol WebSocket berhasil menangani *event-driven broadcasting* dengan sangat efisien. Sistem dinyatakan lolos uji kinerja karena mampu memberikan respons instan yang menjamin integritas sinkronisasi layar anjungan secara *real-time* tanpa mengalami kelambanan (*sluggishness*).

\FrameImagesfalse