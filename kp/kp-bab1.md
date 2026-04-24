
\pagenumbering{arabic}
\setcounter{page}{1}

# PENDAHULUAN

## Latar Belakang

Unit Penunjang Akademik Pengembangan Karier dan Kewirausahaan (UPA PK2) Universitas Tanjungpura (UNTAN) saat ini telah memiliki fasilitas berupa Anjungan (Kiosk) mandiri yang dilengkapi dengan printer. Namun, hingga saat ini perangkat tersebut belum dapat dimanfaatkan secara optimal oleh mahasiswa maupun staf magang karena belum tersedianya sistem yang dapat mengelola alur kerja pencetakan secara mandiri dan terintegrasi. Apabila anjungan ini dipaksakan untuk beroperasi tanpa sistem terintegrasi, mahasiswa harus melakukan proses pencetakan secara manual dengan menautkan akun WhatsApp pribadi mereka ke *browser* pada anjungan publik tersebut untuk mengunduh dokumen.

![Anjungan UPA PK2 UNTAN](kp/images/anjungan-tampak-depan-dan-dalam.png)

Metode akses manual seperti itu tidak efisien dan sangat rentan terhadap risiko keamanan privasi data mahasiswa. Selain itu, ketiadaan sistem terpusat ini menyulitkan pihak pengelola untuk melakukan pengawasan terhadap penggunaan aset. Tanpa adanya sistem otorisasi dan rekapitulasi, pemantauan terhadap volume penggunaan kertas serta validasi terhadap dokumen yang dicetak tidak dapat dilakukan secara akurat. Hal ini menimbulkan risiko pemborosan bahan habis pakai dan kurangnya transparansi dalam pencatatan aktivitas operasional harian.

Pengembangan aplikasi self-printing berbasis web hadir sebagai solusi untuk mengaktifkan fungsi anjungan tersebut sekaligus memberikan mekanisme kendali mutu. Melalui aplikasi ini, setiap dokumen yang diunggah oleh mahasiswa melalui perangkat *mobile* tidak akan langsung dicetak oleh mesin. Sistem didesain agar setiap permintaan cetak yang mencakup detail konfigurasi seperti ukuran kertas (A4/F4), mode warna, dan jumlah halaman harus melalui tahap verifikasi dan persetujuan oleh operator. Hal ini memastikan bahwa setiap lembar kertas yang keluar dari mesin telah terdata dan mendapatkan izin dari pengawas.

Namun, implementasi alur persetujuan ini menghadapi tantangan teknis dalam hal sinkronisasi data antar perangkat. Pada arsitektur web tradisional, layar anjungan tidak akan mengetahui jika operator telah menyetujui permintaan cetak kecuali halaman dimuat ulang secara manual. Jeda komunikasi ini akan menyebabkan kebingungan pada pengguna di depan anjungan dan menghambat proses pelayanan. Diperlukan sebuah teknologi yang mampu menghubungkan status antara perangkat mahasiswa, layar operator, dan mesin anjungan secara instan.

Untuk mengatasi permasalahan tersebut, teknologi WebSocket diimplementasikan guna menciptakan sinkronisasi komunikasi dua arah antara sistem admin dan mesin anjungan secara *real time*. Melalui penerapan teknologi ini, setiap pembaruan status antrean dan persetujuan dokumen dapat langsung diteruskan ke layar anjungan pengguna secara instan, sehingga menciptakan proses pelayanan mandiri yang lebih responsif dan efisien tanpa memerlukan interaksi pemuatan ulang antarmuka secara manual.

Berdasarkan kondisi tersebut, penulis mengangkat judul “Implementasi Teknologi WebSocket untuk Sinkronisasi Data *Real-Time* pada *Backend Website Self-Printing* di UPA PK2 UNTAN”. Aplikasi ini diharapkan dapat mengoptimalkan penggunaan perangkat anjungan yang sudah tersedia, meningkatkan efisiensi pelayanan, serta menjamin pengawasan penggunaan sumber daya yang lebih akurat dan terukur.

## Perumusan Masalah

Berdasarkan latar belakang di atas, dibuatlah perumusan masalah yaitu:

1. Bagaimana merancang arsitektur backend yang mampu mengelola alur pengunggahan dokumen dan manajemen antrean pencetakan secara aman dan terpusat?
2. Bagaimana mengimplementasikan teknologi WebSocket menggunakan Laravel Reverb untuk menciptakan sinkronisasi status secara *real time* dua arah antara layar anjungan dan panel admin?

## Tujuan Kerja Praktek dan Target yang Akan Dicapai

Tujuan kerja praktek adalah sebagai berikut:

a.	Untuk memenuhi beban satuan kredit semester (SKS) yang harus ditempuh sebagai persyaratan akademis di Program Studi Informatika Fakultas Teknik Universitas Tanjungpura.
b.	Untuk membuat *website self-printing* di UPA PK2 UNTAN.

Adapun target yang akan dicapai sebagai berikut:

a.	Terpenuhinya beban satuan kredit semester (SKS) yang harus ditempuh sebagai persyaratan akademis di Program Studi Informatika Fakultas Teknik Universitas Tanjungpura.
b.	Dapat membuat *website self-printing* di UPA PK2 UNTAN.

## Manfaat Kerja Praktek

Adapun manfaat dari kerja praktek, yaitu:

1.	Bagi instansi:

a.	Meningkatkan kecepatan pelayanan karena operator tidak perlu mengecek WhatsApp atau melakukan *refresh* halaman secara berulang-ulang.

2.	Bagi Mahasiswa:

a.	Memperdalam pemahaman mengenai implementasi teknologi WebSocket (khususnya Laravel Reverb) yang merupakan standar industri modern untuk aplikasi *real-time*.
b.	Memahami konsep *Event-Driven Architecture* dalam pengembangan perangkat lunak.


## Pembatasan Masalah

Agar pelaksanaan kerja praktek ini tidak menyimpang dari permasalahan, dibuatlah batasan masalah sebagai berikut:

a.  Implementasi komunikasi *real-time* dibangun menggunakan Laravel Reverb sebagai *server* WebSocket, sedangkan penanganan *event listener* di sisi antarmuka memanfaatkan integrasi pustaka JavaScript (seperti Laravel Echo).
b.	Penulis hanya bertanggung jawab pada logika *backend* (pengiriman *event*) dan memastikan data diterima oleh klien. Desain antarmuka pengguna secara mendetail dikerjakan oleh rekan tim divisi *frontend*.


## Metodologi Kerja Praktek

1.	Analisis Kebutuhan

Pada tahap ini, kebutuhan yang diperlukan oleh *website* diperoleh dengan cara berikut:

a.	Observasi, dilakukan dengan melakukan pengamatan langsung ke lokasi kerja praktek.
b.	Wawancara, berinteraksi dengan pihak terkait melalui sesi tanya jawab untuk memahami kebutuhan yang spesifik dari *website* yang akan dibuat.

2.	Perancangan

Proses perancangan bertujuan menghasilkan kerangka aplikasi yang sesuai dengan hasil analisis sebelumnya. Perancangan ini akan menggunakan UML (diagram *use case*).

3.	Implementasi

Langkah implementasi melibatkan eksekusi rencana yang telah dirancang sebelumnya, menghasilkan sebuah *website* *self-printing* di UPA PK2 UNTAN.

4.	Pengujian

Setelah implementasi selesai maka aka dilakukan pengujian terhadap *website* yang telah dbuat. Tujuan pengujian adalah untuk memastikan *website* bekerja sesuai dengan yang diharapkan.

##	Rincian Pelaksanaan Kerja Praktek
Waktu pelaksanaan kerja praktek adalah pada bulan Januari – Maret 2026.
Adapun rincian pengerjaan kerja praktek adalah sebagai berikut:

\begin{longtable}{|p{0.5cm}|p{4.5cm}|c|c|c|c|c|c|c|c|c|c|c|c|c|c|}
\caption{Rincian Pelaksanaan Kerja Praktek} \\
\hline
\multirow{2}{*}{No} & \multirow{2}{*}{Kegiatan} & \multicolumn{2}{c|}{Jan} & \multicolumn{4}{c|}{Feb} & \multicolumn{4}{c|}{Mar} & \multicolumn{4}{c|}{Apr} \\ \cline{3-16}
& & 2 & 3 & 1 & 2 & 3 & 4 & 1 & 2 & 3 & 4 & 1 & 2 & 3 & 4 \\ \hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
1 & Pengajuan Proposal & \cellcolor[HTML]{f8cbad} & & & & & & & & & & & & & \\ \hline
2 & Penerbitan Surat Pengantar & & & & \cellcolor[HTML]{f8cbad} & & & & & & & & & & \\ \hline
3 & Pelaksanaan Kerja Praktek & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & \cellcolor[HTML]{ffd966} & & & & \\ \hline
4 & Pengajuan Seminar & & & & & & & & & & & & & \cellcolor[HTML]{b4c7e7} & \\ \hline
5 & Pelaksanaan Seminar & & & & & & & & & & & & & \cellcolor[HTML]{c6e0b4} & \\ \hline
6 & Revisi & & & & & & & & & & & & & & \cellcolor[HTML]{8faadc} \\ \hline
\end{longtable}


\newpage