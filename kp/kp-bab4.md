# IMPLEMENTASI DAN PEMBAHASAN

## Implementasi 

Berikut merupakan hasil implementasi tampilan halaman dan penjelasan *backend* dari Web Self-Printing. Penjelasan di bawah ini mencakup visualisasi antarmuka pengguna beserta deskripsi fungsionalitas dari setiap komponen yang tersedia pada sistem.

### Halaman Unggah Dokumen

ini page yg dibuka di perangkat pengguna setelah scan qr code di halaman anjungan (Gambar \label{fig:hal-anjungan-1}). 
![Halaman Unggah Dokumen di Perangkat Pengguna \label{fig:hal-unggah-doc-1}](kp/images/hasil/1-unggah-doc-1.png)

trus aku juga mau nampilin source codenya soalnya judulku backend gitu, ini source code yg nanganin POST dari unggah dokumennya.
![Source Code Menangani Route POST Unggah Dokumen \label{fig:source-1}](kp/images/hasil/10-source-1.png)

trus ini kode yg reload (reverb) halaman anjungannya karena ada dokumen yg diunggah.
![Source Code Reload halaman anjungan \label{fig:source-2}](kp/images/hasil/10-source-2.png)

### Request Cetak Dokumen

ini tampilan halaman anjungan yang tereload karena ada dokumen yang diunggah. ada daftar file, trus ada tombol berlogo kayak printer utk buka modal utk konfigurasi cetak dan tombol delete.
![Halaman Anjungan \label{fig:hal-anjungan-2}](kp/images/hasil/2-anjungan-1.png)

ini tampilan modal jika tombol print ditekan, di sebelah kiri ada preview dokumen yang bisa discroll dan di sebelah kanan ada input-input utk konfigurasi cetaknya, ada tipe kertas, jumlah halaman (semua atau custom), jumlah copy, berwarna/hitam putih, dan tombol request.
![Modal Konfigurasi Cetak \label{fig:hal-anjungan-2}](kp/images/hasil/2-anjungan-1.png)

trus ini kode sumber yang nanganin tombol request tadi. yang juga bakal ngereload halaman kelola permintaan cetak Admin.
![Source Code Menangani Route POST Request Cetak \label{fig:source-3}](kp/images/hasil/10-source-3.png)

### Halaman Kelola Permintaan Cetak

trus ini kode sumber yang buka halaman kelola permintaan cetak.
![Source Code Buka Halaman Kelola Permintaan Cetak \label{fig:source-4}](kp/images/hasil/10-source-4.png)

dan ini tampilan halaman kelola permintaan cetaknya di sisi Admin. di situ ada tombol acc dan reject.
![Halaman Kelola Permintaan Cetak \label{fig:hal-kelola-cetak-req}](kp/images/hasil/3-kelola-cetak-req-1.png)

trus ini kode sumber yang nanganin acc atau reject yg juga akan mereload halaman anjungan.
![Source Code Menangani Route POST Acc/Reject Permintaan Cetak \label{fig:source-5}](kp/images/hasil/10-source-5.png)

### Cetak Dokumen

trus ini halaman anjungan, di situ kalau ada file yg permintaan cetaknya disetujui, tombol print nya jadi hijau, kalau ditolak tombol printnya jadi merah. 
![Halaman Anjungan jika ada Acc \label{fig:hal-anjungan-3}](kp/images/hasil/3-anjungan-3.png)

jika tombol print yang warna hijau tadi ditekan, maka akan muncul modal yg sebelah kiri isinya preview dokumen, yg sebelah kanan informasi dari konfigurasi cetak tadi dan tombol Print.
![Modal Cetak Dokumen \label{fig:hal-anjungan-4}](kp/images/hasil/3-anjungan-4.png)

Jika tombol print ditekan, maka berikut kode sumber yg menanganinya. yg mana juga akan mereload halaman admin karena yg tadi statusnya dari acc menjadi completed.
![Source Code Menangani Route POST Print Dokumen \label{fig:source-6}](kp/images/hasil/10-source-6.png)

### Halaman Login

trus ini halaman login bagi Admin untuk masuk ke dashboard dan juga halaman kelola permintaan cetaknya.
![Halaman Login \label{fig:hal-anjungan-3}](kp/images/hasil/3-anjungan-3.png)

ini kode sumber yg menangani login admin.
![Source Code Menangani Route POST Login \label{fig:source-7}](kp/images/hasil/10-source-7.png)

### Halaman *Dashboard*

setelah login berhasil, maka admin akan diarahkan ke halaman login. di situ ada dua menu, menu pertama yaitu halaman saat ini yaitu dashboard dan menu kedua yaitu menu untuk masuk ke halaman kelola permintaan cetak.
![Halaman \textit{Dashboard} Admin \label{fig:hal-dashboard-1}](kp/images/hasil/3-dashboard-1.png)

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