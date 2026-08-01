<!-- \vspace{2em}
\textbf{LAPORAN KERJA PRAKTEK}

\textbf{IMPLEMENTASI TEKNOLOGI WEBSOCKET UNTUK SINKRONISASI DATA \textit{REAL-TIME} PADA \textit{BACKEND WEBSITE SELF-PRINTING} DI UPA PK2 UNTAN}

\vspace{40pt}
\textbf{OLEH:}\\
\textbf{\underline{DAWAM AGUNG FATHONI}}\\
\textbf{D1041211005}

\vspace{40pt}

Telah Diperiksa dan Siap untuk Diajukan dalam Seminar Kerja Praktek.

\vspace{40pt}
\textbf{Menyetujui}:

\begin{tabular*}{\textwidth}{@{}c@{\extracolsep{\fill}}c@{}}
\textbf{Dosen Pembimbing Kerja Praktek}              & \textbf{Pembimbing Lapangan Kerja Praktek} \\[3em]
\textbf{Enriko Yudhistira Ramadhan, S.Kom., M.T.}        & \textbf{Donny Hidayat S.Kom} \\
\textbf{NIP. 199801242025061004}            &  \\[2em]
\end{tabular*} -->

## Sistem Informasi

Sistem informasi didefinisikan secara teknis sebagai sekumpulan komponen yang saling berhubungan yang bekerja sama untuk mengumpulkan, memproses, menyimpan, dan mendistribusikan informasi guna mendukung pengambilan keputusan dan pengawasan dalam organisasi. Ciri khas utama dari sistem informasi adalah bahwa sistem ini bukan sekadar teknologi (*hardware/software*), melainkan kombinasi dari tiga dimensi utama yaitu organisasi, manajemen, dan teknologi. Sistem informasi merupakan bagian tak terpisahkan dari organisasi. Ini mencakup struktur hierarki, proses bisnis, budaya organisasi, dan orang-orang yang bekerja di dalamnya. Tugas manajemen adalah memahami situasi yang dihadapi organisasi, membuat keputusan, dan merumuskan rencana tindakan untuk memecahkan masalah organisasi. Teknologi informasi adalah alat yang digunakan manajer untuk menghadapi perubahan. Ini mencakup perangkat keras, perangkat lunak, teknologi pengelolaan data, dan teknologi jaringan/telekomunikasi. ada tiga aktivitas dasar yang menjadi ciri cara kerja sistem informasi dalam menghasilkan informasi. Mengumpulkan data mentah (*input*). Mengubah data mentah menjadi bentuk yang berarti (*processing*). Mentransfer informasi yang sudah diproses kepada orang atau aktivitas yang akan menggunakannya (*output*) [@laudon2006].

## Aplikasi Berbasis Web

Aplikasi berbasis web atau WebApps merupakan kategori perangkat lunak yang bersifat network-centric, yang mencakup berbagai aplikasi berbasis peramban (browser) yang mampu menyediakan kemampuan komputasi sekaligus konten informasi kepada pengguna. Dalam perkembangannya, WebApp berawal dari situs web tradisional yang hanya berupa sekumpulan file hiperteks statis, namun kini telah bertransformasi menjadi alat komputasi canggih yang terintegrasi dengan basis data serta aplikasi bisnis lainnya. Dalam cakupan yang luas, istilah WebApp mencakup berbagai layanan, mulai dari fungsi penghitungan sederhana hingga sistem komprehensif yang menawarkan layanan bisnis secara menyeluruh [@Pressman2015].

Aplikasi Berbasis Web (*WebApp*) adalah kategori perangkat lunak yang bersifat *network-centric*, yang berfungsi untuk menyediakan kemampuan komputasi dan konten informasi secara dinamis kepada pengguna melalui antarmuka browser. Dalam perkembangannya, WebApp telah bertransformasi dari sekadar penyajian informasi statis menjadi sistem komputasi yang kompleks. Saat ini, sebuah WebApp tidak hanya beroperasi secara mandiri, melainkan bertindak sebagai sistem terintegrasi yang mampu terhubung dengan basis data perusahaan maupun aplikasi bisnis lainnya secara real-time, baik melalui jaringan internet, intranet, maupun ekstranet [@Pressman2015].

3. *System Usability Scale* (SUS)
Untuk mengukur tingkat penerimaan sistem oleh pengguna akhir, dilakukan pengujian \textit{usability} yang ditujukan kepada setidaknya 30 responden Asesi. Pengujian ini menggunakan instrumen \textit{System Usability Scale} (SUS) yang dikembangkan oleh John Brooke, guna mendapatkan metrik evaluasi yang valid secara statistik terkait kemudahan penggunaan sistem [@Brooke1996].

### Aturan Penilaian *System Usability Scale* (SUS)

Pengujian SUS menggunakan kuesioner yang terdiri dari 10 pernyataan baku (5 pernyataan bernada positif dan 5 pernyataan bernada negatif) yang telah diadaptasi ke dalam bahasa Indonesia. Pernyataan tersebut dievaluasi menggunakan Skala Likert 5 poin (1 = Sangat Tidak Setuju, hingga 5 = Sangat Setuju). Adapun kesepuluh pernyataan tersebut adalah:

1. Saya berpikir akan sering menggunakan sistem ini.
2. Saya merasa sistem ini terlalu rumit padahal dapat dibuat lebih sederhana.
3. Saya merasa sistem ini mudah untuk digunakan.
4. Saya membutuhkan bantuan dari orang teknis untuk dapat menggunakan sistem ini.
5. Saya merasa fitur-fitur sistem ini berjalan dengan semestinya.
6. Saya merasa ada banyak hal yang tidak konsisten pada sistem ini.
7. Saya merasa mayoritas orang akan memahami cara menggunakan sistem ini dengan cepat.
8. Saya merasa sistem ini sangat membingungkan.
9. Saya merasa tidak ada hambatan dalam menggunakan sistem ini.
10. Saya perlu membiasakan diri terlebih dahulu sebelum dapat menggunakan sistem ini.

Aturan perhitungan untuk mendapatkan nilai akhir SUS adalah sebagai berikut:

1. Untuk setiap **pertanyaan ganjil** (positif), skor jawaban responden dikurangi 1.
2. Untuk setiap **pertanyaan genap** (negatif), angka 5 dikurangi skor jawaban responden.
3. Total skor didapatkan dengan menjumlahkan seluruh hasil perhitungan dari ke-10 pertanyaan, lalu dikalikan dengan konstanta **2,5**.

Skor akhir SUS akan berada pada rentang 0 hingga 100. Interpretasi kelayakan merujuk pada standar penilaian SUS, di mana skor rata-rata global adalah 68. Sistem dinyatakan masuk dalam rentang penerimaan yang layak (\textit{Acceptable}) jika skor mencapai angka di atas 68, dan selanjutnya akan diklasifikasikan ke dalam \textit{Adjective Rating} (\textit{Poor, OK, Good, Excellent,} atau \textit{Best Imaginable}).
