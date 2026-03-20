\pagenumbering{roman}
\begin{spacing}{1}
\tableofcontents
\newpage
\listoftables
\newpage
\listoffigures
\end{spacing}
\newpage

\pagenumbering{arabic}
\setcounter{page}{1}

# PENDAHULUAN

## Latar Belakang

Unit Penunjang Akademik Pengembangan Karir dan Kewirausahaan (UPA PK2) Universitas Tanjungpura (UNTAN) saat ini telah memiliki fasilitas berupa Anjungan (Kiosk) mandiri yang dilengkapi dengan printer. Namun, hingga saat ini perangkat tersebut belum dapat dimanfaatkan secara optimal oleh mahasiswa maupun staf magang karena belum tersedianya sistem yang dapat mengelola alur kerja pencetakan secara mandiri dan terintegrasi. Pelayanan percetakan masih bergantung pada metode konvensional, di mana mahasiswa mengirimkan dokumen melalui whatsapp kepada operator.

Metode konvensional ini tidak hanya tidak efisien, tetapi juga menyulitkan pihak pengelola, dalam hal ini Bapak Donny selaku pembina UPA PK2, untuk melakukan pengawasan terhadap penggunaan aset. Tanpa adanya sistem kontrol, pemantauan terhadap volume penggunaan kertas dan validasi terhadap dokumen yang dicetak menjadi sulit dilakukan. Hal ini menimbulkan risiko pemborosan sumber daya dan kurangnya transparansi dalam pencatatan aktivitas operasional harian.

Pengembangan aplikasi Self Printing berbasis web hadir sebagai solusi untuk mengaktifkan fungsi anjungan tersebut sekaligus memberikan mekanisme kendali mutu. Melalui aplikasi ini, setiap dokumen yang diunggah oleh mahasiswa melalui perangkat mobile tidak akan langsung dicetak oleh mesin. Sistem didesain agar setiap permintaan cetak yang mencakup detail konfigurasi seperti ukuran kertas (A4/F4), mode warna, dan jumlah halaman harus melalui tahap verifikasi dan persetujuan oleh operator. Hal ini memastikan bahwa setiap lembar kertas yang keluar dari mesin telah terdata dan mendapatkan izin dari pengawas.

Namun, implementasi alur persetujuan ini menghadapi tantangan teknis dalam hal sinkronisasi data antar perangkat. Pada arsitektur web tradisional, layar anjungan tidak akan mengetahui jika operator telah menyetujui permintaan cetak kecuali halaman dimuat ulang secara manual. Jeda komunikasi ini akan menyebabkan kebingungan pada pengguna di depan anjungan dan menghambat proses pelayanan. Diperlukan sebuah teknologi yang mampu menghubungkan status antara perangkat mahasiswa, layar operator, dan mesin anjungan secara instan.

Untuk mengatasi permasalahan tersebut, teknologi WebSocket diimplementasikan sebagai media komunikasi full-duplex yang memungkinkan server mengirimkan notifikasi persetujuan secara real-time. Dengan WebSocket, ketika operator melakukan klik "Approve" pada perangkatnya, tombol "Print" pada layar anjungan akan langsung aktif secara otomatis tanpa perlu refresh halaman.

Berdasarkan kondisi tersebut, penulis mengangkat judul “Implementasi Teknologi WebSocket untuk Sinkronisasi Data Real-Time pada Aplikasi Self Printing Berbasis Web di UPA PK2 UNTAN”. Aplikasi ini diharapkan dapat mengoptimalkan penggunaan perangkat anjungan yang sudah tersedia, meningkatkan efisiensi pelayanan, serta menjamin pengawasan penggunaan sumber daya yang lebih akurat dan terukur.

## Perumusan Masalah

Berdasarkan latar belakang di atas, dibuatlah perumusan masalah yaitu:

1. Bagaimana merancang arsitektur backend yang mampu menangani pengiriman data dokumen secara *asynchronous*?
2. Bagaimana mengimplementasikan protokol WebSocket menggunakan Laravel Reverb untuk menghubungkan perangkat pengguna dan anjungan?
3. Bagaimana mekanisme event broadcasting bekerja agar daftar antrian pada sis operator dapat diperbarui secara otomatis (real-time) saat terjadi pengunggahan file?


## Tujuan Kerja Praktek dan Target yang Akan Dicapai

Tujuan kerja praktek adalah sebagai berikut:

a.	Untuk memenuhi beban satuan kredit semester (SKS) yang harus ditempuh sebagai persyaratan akademis di Program Studi Informatika Fakultas Teknik Universitas Tanjungpura.
b.	Untuk membuat website Self Printing di UPA PK2 UNTAN.

Adapun target yang akan dicapai sebagai berikut:

a.	Terpenuhinya beban satuan kredit semester (SKS) yang harus ditempuh sebagai persyaratan akademis di Program Studi Informatika Fakultas Teknik Universitas Tanjungpura.
b.	Dapat membuat website Self Printing di UPA PK2 UNTAN.

## Manfaat Kerja Praktek

Adapun manfaat dari kerja praktek, yaitu:

1.	Bagi instansi:

a.	Meningkatkan kecepatan pelayanan karena operator tidak perlu mengecek WhatsApp atau melakukan refresh halaman secara berulang-ulang.

2.	Bagi Mahasiswa:

a.	Memperdalam pemahaman mengenai implementasi teknologi WebSocket (khususnya Laravel Reverb) yang merupakan standar industri modern untuk aplikasi real-time.
b.	Memahami konsep Event-Driven Architecture dalam pengembangan perangkat lunak.


## Pembatasan Masalah

Agar pelaksanaan kerja praktek ini tidak menyimpang dari permasalahan, dibuatlah batasan masalah sebagai berikut:

a.	Implementasi real-time dibangun menggunakan Laravel Reverb sebagai server WebSocket dan Laravel untuk penanganan event listener di sisi antarmuka
b.	Penulis hanya bertanggung jawab pada logika backend (pengiriman sinyal/event) dan memastikan data diterima oleh klien. Desain antarmuka pengguna (UI) secara mendetail dikerjakan oleh rekan tim divisi Frontend.


## Metodologi Kerja Praktek

1.	Analisis Kebutuhan
Pada tahap ini, kebutuhan yang diperlukan oleh website diperoleh dengan cara berikut:
a.	Observasi
Observasi dilakukan dengan melakukan pengamatan langsung ke lokasi kerja praktek.
b.	Wawancara
Berinteraksi dengan pihak terkait melalui sesi tanya jawab untuk memahami kebutuhan yang spesifik dari website yang akan dibuat.
2.	Perancangan
Proses perancangan bertujuan menghasilkan kerangka aplikasi yang sesuai dengan hasil analisis sebelumnya. Perancangan ini akan menggunakan UML (use case).
3.	Implementasi
Langkah implementasi melibatkan eksekusi rencana yang telah dirancang sebelumnya, menghasilkan sebuah website Self Printing di UPA PK2 UNTAN.
4.	Testing
Setelah implementasi selesai maka aka dilakukan testing terhadap website yang telah dbuat. Tujuan testing adalah untuk memastikan website bekerja sesuai dengan yang diharapkan.

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
1 & Pengajuan Proposal & \cellcolor{lightgray} & \cellcolor{lightgray} & & & & & & & & & & & & \\ \hline
2 & Penerbitan Surat Pengantar & & & \cellcolor{blue} & \cellcolor{blue} & & & & & & & & & & \\ \hline
3 & Pelaksanaan Kerja Praktek & & & & & \cellcolor{cyan} & \cellcolor{cyan} & \cellcolor{cyan} & \cellcolor{cyan} & & & & & & \\ \hline
4 & Pengajuan Seminar & & & & & & & & & \cellcolor{green} & \cellcolor{green} & & & & \\ \hline
5 & Pelaksanaan Seminar & & & & & & & & & & & \cellcolor{lime} & \cellcolor{lime} & & \\ \hline
6 & Revisi & & & & & & & & & & & & & \cellcolor{magenta} & \cellcolor{magenta} \\ \hline
\end{longtable}


\newpage