# TINJAUAN PUSTAKA

## Studi Pustaka

##	Website 

Website didefinisikan sebagai sekumpulan file *hypertext* yang saling tertaut dan menyajikan informasi menggunakan teks serta grafis. [@Pressman2015]. Backend, atau yang sering dirujuk sebagai sisi *server* (*server-side*), merupakan infrastruktur komputasi yang mencakup *server*, sistem penyimpanan data (basis data), serta aplikasi yang menetap di *server* guna mengelola logika bisnis dan sumber daya sistem . Pengalaman web di sisi *backend* dibangun dari tiga komponen utama, yaitu *Web Server* (seperti Apache), bahasa pemrograman *server-side scripting* (seperti PHP), dan basis data (seperti MySQL) . Secara operasional, *backend* berfungsi untuk menerima permintaan (*request*) dari klien atau browser, memproses data tersebut secara dinamis termasuk melakukan kueri ke basis data untuk mengambil atau menyimpan informasi dan mengirimkan hasilnya kembali kepada klien dalam bentuk balasan (*response*) . Selain fungsionalitas konten, *backend* memegang peranan krusial dalam aspek keamanan aplikasi, karena seluruh proses validasi data akhir dan penyimpanan informasi sensitif harus dilakukan sepenuhnya di sisi server guna menjaga integritas sistem dari potensi manipulasi di sisi klien [@Nixon2018].

## UPA PK2 UNTAN

UPA PK2 UNTAN adalah.

## *Web Self-Service*

*Web Self-Service* merupakan perwujudan dari *Self-Service Technologies* (SSTs), yakni antarmuka teknologi yang memungkinkan pelanggan untuk mendapatkan atau menghasilkan layanan secara mandiri tanpa keterlibatan langsung dari karyawan perusahaan. Melalui platform berbasis internet, teknologi ini memfasilitasi pengguna untuk melakukan berbagai aktivitas seperti transaksi pembelian, pengecekan informasi akun, hingga pelacakan pengiriman tanpa perlu mengunjungi gerai fisik atau berkomunikasi dengan staf. Layanan ini secara garis besar mencakup tiga tujuan utama yaitu, layanan pelanggan untuk menjawab kebutuhan informasi, transaksi langsung untuk pertukaran sumber daya secara efisien, serta bantuan mandiri yang memungkinkan pelanggan belajar dan memperoleh layanan sesuai kenyamanan mereka. Secara fundamental, *Web Self-Service* mengalihkan interaksi tradisional di pasar fisik ke dalam *marketspace*, yaitu ranah virtual di mana produk dan layanan hadir sebagai informasi digital yang dikirimkan melalui saluran berbasis informasi [@Meuter2000].

## *Web to Print Workflow*

*Web to Print Workflow* dalam konteks otomatisasi industri grafika merupakan sebuah sistem yang mengintegrasikan portal berbasis web sebagai antarmuka untuk menghubungkan pengguna jasa cetak (*print buyer*) dengan penyedia jasa cetak (*print provider*) secara digital. Inti dari alur kerja ini adalah otomatisasi alur kerja, yaitu proses menyuplai data secara otomatis ke perangkat produksi agar mesin dapat menjalankan proses cetak segera setelah instruksi tersedia. Dalam sistem anjungan mandiri, *website* berfungsi sebagai pengontrol yang mengirimkan *metadata* berupa informasi spesifikasi dokumen langsung ke perangkat printer tanpa memerlukan bantuan *operator* manual. Dengan demikian, alur kerja ini mengubah urutan produksi konvensional menjadi sebuah rangkaian proses digital yang efisien, di mana setiap tahapan cetak dijalankan berdasarkan daftar aturan prosedur yang telah didefinisikan dalam sistem web tersebut [@Hoffmann2023]

## Sinkronisasi Data

Sinkronisasi data adalah proses terintegrasi untuk memelihara konsistensi antara basis data pusat dan tampilan terminal agar berbagai salinan data yang sama tidak saling bertentangan atau mengalami inkonsistensi. Melalui mekanisme replikasi dan propagasi pembaruan, sistem menjamin bahwa layar terminal selalu menyajikan snapshot yang konsisten secara transaksi, di mana setiap perubahan data yang relevan tercermin secara akurat berdasarkan status terakhir yang sah di *server*. Proses sinkronisasi ini harus menjaga sifat atomisitas, yaitu prinsip bahwa seluruh rangkaian pembaruan harus berhasil secara utuh atau tidak sama sekali untuk mencegah kegagalan data akibat masalah jaringan, sehingga tercipta transparansi replikasi di mana pengguna merasa seolah-olah berinteraksi langsung dengan satu sumber data tunggal yang terpadu [@Silberschatz2011].

## *Real Time*

Sistem *real time* didefinisikan sebagai sistem yang diwajibkan untuk menyelesaikan tugas dan memberikan layanannya secara tepat waktu (*on a timely basis*) menjamin fungsionalitas dan integritas data. Karakteristik utama yang memberikan kesan respon instan adalah responsivitas yang dirasakan (*perceived responsiveness*), di mana sistem harus bekerja cukup cepat sehingga pengguna tidak merasakan adanya kelambanan (*sluggishness*) [@Liu2000].

## Websocket

WebSocket adalah standar industri terbuka yang memungkinkan komunikasi dua arah (bidirectional) dan penuh (full-duplex) antara aplikasi klien dan server melalui Web tanpa memerlukan plugin tambahan. Teknologi ini beroperasi melalui koneksi tunggal (single-socket) yang terus terbuka setelah proses jabat tangan (handshake) awal untuk meningkatkan (upgrade) protokol HTTP ke protokol WebSocket melalui koneksi TCP yang sama. Berbeda dengan arsitektur HTTP lama yang memiliki latensi tinggi karena keterbatasan pola request-response, WebSocket sangat mengurangi latensi karena memungkinkan server mengirimkan pesan secara instan begitu data tersedia tanpa harus menunggu permintaan dari klien. Dengan karakteristik yang berbasis event (event-driven), WebSocket menyediakan kemampuan jaringan bergaya TCP bagi website untuk mendukung interaksi yang responsif dan sinkronisasi data real-time secara efisien [@Wang2013].

## Laravel

Laravel didefinisikan sebagai kerangka kerja (*framework*) aplikasi web berbasis PHP dan bersifat *open source* yang dirancang untuk memfasilitasi pengembangan sistem yang kompleks dengan sintaks yang ekspresif dan elegan. Kerangka kerja ini mengadopsi arsitektur *Model-View-Controller* (MVC) dan menyediakan standar konvensi (*opinionated defaults*) yang membantu pengembang membangun aplikasi secara terstruktur dan efisien.

Keunggulan utama Laravel terletak pada kemampuannya menyediakan ekosistem fitur yang komprehensif dan siap pakai (out-of-the-box). Fitur-fitur krusial seperti otentikasi pengguna, mekanisme validasi *input* yang ketat, serta manajemen basis data melalui *Eloquent Object-Relational Mapping* (ORM) dan *Query Builder* tersedia secara bawaan. Hal ini tidak hanya mempercepat proses pengembangan, tetapi juga menjamin keamanan dan konsistensi kode program dibandingkan membangun sistem dari nol.

Dalam pengembangan aplikasi ini, Laravel difungsikan sebagai fondasi *backend* yang terintegrasi erat dengan antarmuka pengguna melalui pustaka Inertia.js. Pendekatan ini memungkinkan penerapan arsitektur *Monolith*, di mana Laravel tetap memegang kendali penuh atas manajemen *routing* dan *controller*, namun masih dapat memvisualisasikan tampilan berbasis komponen Vue.js tanpa perlu membangun RESTful API yang terpisah dan kompleks. Fitur *Migrations* tetap digunakan untuk manajemen skema basis data MySQL agar terorganisir [@Stauffer2019].

## Unified Modelling Language (UML)

*Unified Modeling Language* (UML) adalah bahasa pemodelan utama yang digunakan untuk menganalisis, menentukan, dan merancang sistem perangkat lunak. UML yang dipakai di kerja praktik ini adalah diagram *use case*, diagram *activity*, dan diagram *class* [@Booch2007].

### Diagram *Use Case*

Dalam UML, diagram *use case* didefinisikan sebagai representasi visual yang menggambarkan konteks serta fungsionalitas dari sistem yang akan dibangun. Diagram ini secara spesifik memetakan interaksi antara entitas eksternal (aktor) dengan sistem. Kemampuan visualisasi ini menjadikan diagram *use case* sebagai instrumen vital untuk menjembatani kesenjangan komunikasi dan menyelaraskan pemahaman antara pemangku kepentingan bisnis dan tim pengembang. Diagram *use case* secara khusus memvisualisasikan siapa (atau apa) yang berinteraksi dengan sistem serta apa yang diinginkan dunia luar agar sistem tersebut lakukan [@Booch2007]. Simbol-simbol diagram *use case* dapat dilihat pada Tabel \ref{tab:simbol-usecase} berikut.

\begin{longtable}{|p{3.5cm}|p{10.5cm}|}
\caption{Simbol-Simbol Diagram \textit{Use Case}}\label{tab:simbol-usecase} \\
\hline
\centering\textbf{Simbol} & \textbf{Keterangan} \\ \hline
\endfirsthead
\hline
\centering\textbf{Simbol} & \textbf{Keterangan} \\ \hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
\raggedright \textbf{\textit{Use Case}} \par \centering \includegraphics[width=2.5cm]{images/simbol/usecase/usecase.png} & 
Fungsionalitas yang disediakan oleh sistem dalam bentuk unit-unit yang berinteraksi dan bertukar pesan antara satu sama lain serta dengan aktor. \\ \hline
\raggedright \textbf{Aktor} \par \centering \includegraphics[width=0.5cm]{images/simbol/usecase/aktor.png} & 
Orang, proses, atau sistem lain yang berinteraksi dengan sistem informasi yang akan dibuat di luar sistem informasi. \\ \hline
\raggedright \textbf{Asosiasi} \par \centering \includegraphics[width=2.5cm]{images/simbol/usecase/asosiasi.png} & 
Merupakan kesatuan eksternal yang berinteraksi dengan sistem. \\ \hline
\raggedright \textbf{Generalisasi} \par \centering \includegraphics[width=2.5cm]{images/simbol/usecase/generalisasi.png} & 
Relasi antara \textit{use case} di mana \textit{use case} yang satu lebih umum dari \textit{use case} yang lain. \\ \hline
\raggedright \textbf{\textit{Include}} \par \centering \includegraphics[width=2.5cm]{images/simbol/usecase/include.png} & 
Relasi antara \textit{use case} tambahan dan \textit{use case} utama, di mana \textit{use case} tambahan membutuhkan \textit{use case} utama agar dapat berfungsi. \\ \hline
\raggedright \textbf{\textit{Extends}} \par \centering \includegraphics[width=2.5cm]{images/simbol/usecase/extend.png} & 
Relasi antara \textit{use case} tambahan dan \textit{use case} utama, di mana \textit{use case} utama tetap dapat berjalan sendiri tanpa bergantung pada \textit{use case} tambahan. \\ \hline

\end{longtable}

### Diagram *Activity*

Diagram *activity* didefinisikan sebagai representasi visual yang menggambarkan alur aktivitas dalam suatu sistem, proses bisnis, maupun alur kerja (*workflow*). Diagram ini secara spesifik memfokuskan pada aktivitas-aktivitas yang dijalankan serta mengidentifikasi entitas (siapa atau apa) yang bertanggung jawab atas pelaksanaannya. Dalam tahap analisis, diagram ini menjadi instrumen fundamental untuk mendetailkan skenario *use case* dan memahami perilaku eksekusi sistem tingkat tinggi tanpa perlu melibatkan kompleksitas detail pertukaran pesan internal yang teknis [@Booch2007]. Simbol-simbol diagram *activity* dapat dilihat pada Tabel \ref{tab:simbol-activity} berikut.

\begin{longtable}{|p{3.5cm}|p{10.5cm}|}
\caption{Simbol-Simbol Diagram \textit{Activity}}\label{tab:simbol-activity} \\
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endfirsthead
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
\raggedright \textbf{\textit{Initial Node}} \par \centering \includegraphics[width=1cm]{images/simbol/activity/initial.png} & 
Menunjukkan awal dari aliran aktivitas dalam suatu diagram. Biasanya digambarkan dengan lingkaran hitam penuh. \\ \hline
\raggedright \textbf{\textit{Action}} \par \centering \includegraphics[width=3cm]{images/simbol/activity/action.png} & 
Mempresentasikan eksekusi dari suatu langkah atau instruksi dalam alur kerja. Digambarkan dengan persegi panjang dengan sudut membulat. \\ \hline
\raggedright \textbf{\textit{Decision Node}} \par \centering \includegraphics[width=2.5cm]{images/simbol/activity/decision.png} & 
Simbol pilihan yang memiliki satu aliran masuk dan dua atau lebih aliran keluar berdasarkan syarat (kondisi) tertentu. \\ \hline
% \raggedright \textbf{\textit{Fork Node}} \par \centering \includegraphics[width=2.5cm]{images/simbol/activity/fork.png} & Digunakan untuk memecah satu aliran menjadi beberapa aliran yang berjalan secara paralel (bersamaan). \\ \hline
% \raggedright \textbf{\textit{Join Node}} \par \centering \includegraphics[width=2.5cm]{images/simbol/activity/join.png} & Digunakan untuk menggabungkan kembali beberapa aliran paralel menjadi satu aliran tunggal. \\ \hline
% \raggedright \textbf{\textit{Control Flow}} \par \centering \includegraphics[width=2cm]{images/simbol/activity/flow.png} & Garis panah yang menunjukkan urutan atau arah aliran dari satu aktivitas ke aktivitas berikutnya. \\ \hline
\raggedright \textbf{\textit{Final Node}} \par \centering \includegraphics[width=1cm]{images/simbol/activity/final.png} & 
Menunjukkan akhir dari seluruh aliran aktivitas dalam diagram. Digambarkan dengan lingkaran dengan titik di tengahnya (seperti mata sapi). \\ \hline

\end{longtable}

### Diagram *Class*

Diagram *Class* merupakan sebuah diagram yang merepresentasikan struktur logis dari sebuah sistem. Diagram ini memvisualisasikan keberadaan kelas-kelas serta hubungan (*relationships*) yang terjalin di antaranya. Selama analisis, diagram *class* digunakan untuk menunjukkan peran dan tanggung jawab umum entitas yang menentukan perilaku sistem. Selama perancangan, diagram *class* digunakan untuk menggambarkan struktur kelas-kelas yang membentuk arsitektur sistem [@Booch2007]. Simbol-simbol diagram *class* dapat dilihat pada Tabel \ref{tab:simbol-class} berikut.

\begin{longtable}{|p{3.5cm}|p{10.5cm}|}
\caption{Simbol-Simbol Diagram \textit{Class}}\label{tab:simbol-class} \\
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endfirsthead
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endhead
\hline
\endfoot
\hline
\endlastfoot

\raggedright \textbf{\textit{Class}} \par \centering \includegraphics[width=2.5cm]{images/simbol/class/classname.png} & Struktur utama yang mendefinisikan objek, terdiri dari tiga bagian: nama kelas, atribut properti, dan metode. \\ \hline

\raggedright \textbf{Asosiasi} \par \centering \includegraphics[width=2.5cm]{images/simbol/class/asosiasi.png} & Hubungan statis antar kelas yang menunjukkan bahwa satu kelas memiliki keterkaitan dengan kelas lainnya. \\ \hline

\raggedright \textbf{Agregasi} \par \centering \includegraphics[width=2.5cm]{images/simbol/class/agregasi.png} & Hubungan "bagian dari" (\textit{part-of}) di mana objek bagian dapat berdiri sendiri tanpa objek induknya. Digambarkan dengan garis dengan ujung belah ketupat kosong. \\ \hline

\raggedright \textbf{Komposisi} \par \centering \includegraphics[width=2.5cm]{images/simbol/class/komposisi.png} & Hubungan kepemilikan yang kuat di mana objek bagian tidak dapat hidup tanpa objek induknya. Digambarkan dengan belah ketupat hitam penuh. \\ \hline

\raggedright \textbf{Generalisasi} \par \centering \includegraphics[width=2.5cm]{images/simbol/class/generalisasi.png} & Menunjukkan hubungan pewarisan antara kelas induk (\textit{superclass}) dan kelas anak (\textit{subclass}). \\ \hline

\end{longtable}

## ERD

*Entity Relationship Diagram* (ERD) Menurut [@Elmasri2016], adalah model data konseptual tingkat tinggi yang digunakan pada fase perancangan basis data. Diagram ini berfungsi sebagai notasi visual untuk menyusun skema konseptual, yaitu deskripsi ringkas namun detail mengenai kebutuhan data pengguna tanpa melibatkan detail implementasi teknis. Karena sifatnya yang independen dari aspek teknis, ERD menjadi alat komunikasi yang efektif antara perancang sistem dan pengguna awam.

Komponen utama dalam ERD meliputi entitas, atribut, dan hubungan (*relationships*) antar entitas tersebut. Diagram ini juga memetakan batasan struktural seperti rasio kardinalitas (misalnya 1:1 atau 1:N) dan batasan partisipasi untuk memastikan integritas hubungan antar data.

*Data dictionary* atau sering disebut katalog DBMS, didefinisikan sebagai repositori penyimpanan metadata, yaitu data yang mendeskripsikan struktur basis data itu sendiri. Di dalamnya tersimpan definisi skema lengkap, mulai dari nama kolom, tipe data.

Perangkat lunak DBMS menggunakan katalog ini sebagai acuan utama saat mengakses atau memanipulasi data untuk memastikan bahwa setiap perubahan status data tetap valid dan sesuai dengan aturan struktur yang telah didefinisikan sebelumnya. Simbol-simbol ERD dapat dilihat pada Tabel \ref{tab:simbol-erd} berikut.

\begin{longtable}{|p{3.5cm}|p{10.5cm}|}
\caption{Simbol-Simbol \textit{Entity Relationship Diagram}}\label{tab:simbol-erd} \\
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endfirsthead
\hline
\centering\textbf{Simbol} & \centering\textbf{Keterangan} \tabularnewline \hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
\raggedright \textbf{\textit{Entity}} \par \centering \includegraphics[width=2.5cm]{images/simbol/erd/entity.png} & Kumpulan objek yang memiliki karakteristik yang sama dan dapat diidentifikasi secara unik. Digambarkan dengan bentuk persegi panjang. \\ \hline
\raggedright \textbf{\textit{Relationship}} \par \centering \includegraphics[width=2cm]{images/simbol/erd/relation.png} & Menunjukkan adanya hubungan atau keterkaitan antara dua atau lebih entitas. Digambarkan dengan bentuk belah ketupat (\textit{diamond}). \\ \hline
\raggedright \textbf{\textit{Attribute}} \par \centering \includegraphics[width=2cm]{images/simbol/erd/attribute.png} & 
Karakteristik atau properti yang mendeskripsikan suatu entitas. Digambarkan dengan bentuk oval. \\ \hline
\raggedright \textbf{Garis Penghubung} \par \centering \includegraphics[width=2cm]{images/simbol/erd/line.png} & Garis yang menghubungkan atribut ke entitas atau entitas ke relasi dalam diagram. \\ \hline

\end{longtable}

## MySQL

*Relational Database Management System* (RDBMS) didefinisikan sebagai sistem perangkat lunak yang dirancang khusus untuk mengimplementasikan model data relasional. Dalam konsep ini, data direpresentasikan sebagai sekumpulan tabel yang saling terhubung melalui nilai-nilai kunci yang sama, bukan melalui *pointer* fisik. Sistem ini menyediakan metode yang terstruktur dan aman bagi pengguna untuk membuat, memelihara, serta memanipulasi data menggunakan bahasa standar yang dikenal sebagai *Structured Query Language* (SQL).

MySQL disebut perangkat lunak basis data *open-source* RDBMS. MySQL dikenal karena fleksibilitasnya yang dapat beroperasi di berbagai sistem operasi seperti Windows, Linux, dan Mac OS X, serta sering menjadi pilihan utama sebagai *backend* penyimpanan data untuk aplikasi berbasis web. Meskipun tersedia secara gratis, MySQL menawarkan fitur-fitur tingkat lanjut seperti kemampuan replikasi bawaan dan skalabilitas yang mumpuni menjadikannya solusi yang andal bagi organisasi maupun pengembang individu dalam menjaga ketersediaan data dan integritas sistem [@Hoffer2011].

## *Black Box Testing*

*Black box testing*, yang juga dikenal sebagai pengujian perilaku (*behavioral testing*), merupakan metode pengujian yang berfokus pada persyaratan fungsional perangkat lunak. Berbeda dengan *white box testing* yang membedah logika internal program, *black box testing* memungkinkan penguji untuk memperoleh serangkaian kondisi input yang sepenuhnya menguji semua persyaratan fungsional program tanpa perlu mengetahui struktur kode aplikasinya [@Pressman2015].

Lebih lanjut, Pressman menjelaskan bahwa metode ini berusaha menemukan kesalahan dalam beberapa kategori spesifik, yaitu fungsi yang tidak benar atau hilang, kesalahan antarmuka (*interface errors*), kesalahan dalam struktur data atau akses basis data eksternal, kesalahan perilaku atau kinerja aplikasi, serta kesalahan inisialisasi dan terminasi.


