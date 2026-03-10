# TINJAUAN PUSTAKA

##	Website 

Website didefinisikan sebagai sekumpulan file *hypertext* yang saling tertaut dan menyajikan informasi menggunakan teks serta grafis. [@Pressman2015]. Backend, atau yang sering dirujuk sebagai sisi server (server-side), merupakan infrastruktur komputasi yang mencakup server, sistem penyimpanan data (basis data), serta aplikasi yang menetap di server guna mengelola logika bisnis dan sumber daya sistem . Menurut Nixon, pengalaman web di sisi backend dibangun dari tiga komponen utama, yaitu Web Server (seperti Apache), bahasa pemrograman server-side scripting (seperti PHP), dan basis data (seperti MySQL) . Secara operasional, backend berfungsi untuk menerima permintaan (request) dari klien atau browser, memproses data tersebut secara dinamis—termasuk melakukan kueri ke basis data untuk mengambil atau menyimpan informasi—dan mengirimkan hasilnya kembali kepada klien dalam bentuk balasan (response) . Selain fungsionalitas konten, backend memegang peranan krusial dalam aspek keamanan aplikasi, karena seluruh proses validasi data akhir dan penyimpanan informasi sensitif harus dilakukan sepenuhnya di sisi server guna menjaga integritas sistem dari potensi manipulasi di sisi klien [nixon].

## UPA PK2 UNTAN

UPA PK2 UNTAN adalah.

## Web Self-Service

Web Self-Service merupakan perwujudan dari Self-Service Technologies (SSTs), yakni antarmuka teknologi yang memungkinkan pelanggan untuk mendapatkan atau menghasilkan layanan secara mandiri tanpa keterlibatan langsung dari karyawan perusahaan. Melalui platform berbasis internet, teknologi ini memfasilitasi pengguna untuk melakukan berbagai aktivitas seperti transaksi pembelian, pengecekan informasi akun, hingga pelacakan pengiriman tanpa perlu mengunjungi gerai fisik atau berkomunikasi dengan staf. Layanan ini secara garis besar mencakup tiga tujuan utama: layanan pelanggan untuk menjawab kebutuhan informasi, transaksi langsung untuk pertukaran sumber daya secara efisien, serta bantuan mandiri (self-help) yang memungkinkan pelanggan belajar dan memperoleh layanan sesuai kenyamanan mereka. Secara fundamental, web self-service mengalihkan interaksi tradisional di pasar fisik ke dalam marketspace, yaitu ranah virtual di mana produk dan layanan hadir sebagai informasi digital yang dikirimkan melalui saluran berbasis informasi

## Web to Print Workflow

Web-to-print workflow dalam konteks otomatisasi industri grafika merupakan sebuah sistem yang mengintegrasikan portal berbasis web sebagai antarmuka untuk menghubungkan pembeli cetak (print buyer) dengan penyedia jasa cetak (print provider) secara digital. Menurut Thomas Hoffmann, inti dari alur kerja ini adalah otomatisasi alur kerja, yaitu proses menyuplai data secara otomatis ke perangkat produksi agar mesin dapat menjalankan proses cetak segera setelah instruksi tersedia. Dalam sistem anjungan mandiri, website berfungsi sebagai pengontrol yang mengirimkan metadata—berupa informasi identitas pengguna, detail tugas, dan spesifikasi dokumen—langsung ke perangkat printer tanpa memerlukan bantuan operator manual. Dengan demikian, alur kerja ini mengubah urutan produksi konvensional menjadi sebuah rangkaian proses digital yang efisien, di mana setiap tahapan cetak dijalankan berdasarkan set aturan prosedur yang telah didefinisikan dalam sistem web tersebut [hoffman]

## Sinkronisasi Data

Sinkronisasi data adalah proses terintegrasi untuk memelihara konsistensi antara database pusat dan tampilan terminal agar berbagai salinan data yang sama tidak saling bertentangan atau mengalami inkonsistensi. Melalui mekanisme replikasi dan propagasi pembaruan, sistem menjamin bahwa layar terminal selalu menyajikan snapshot yang konsisten secara transaksi, di mana setiap perubahan data (seperti kuota cetak atau saldo) tercermin secara akurat berdasarkan status terakhir yang sah di server. Proses sinkronisasi ini harus menjaga sifat atomisitas, yaitu prinsip bahwa seluruh rangkaian pembaruan harus berhasil secara utuh atau tidak sama sekali untuk mencegah kegagalan data akibat masalah jaringan, sehingga tercipta transparansi replikasi di mana pengguna merasa seolah-olah berinteraksi langsung dengan satu sumber data tunggal yang terpadu [database silberchatz].

## Real Time

Menurut Jane W. S. Liu, sistem real-time didefinisikan sebagai sistem yang diwajibkan untuk menyelesaikan tugas dan memberikan layanannya secara tepat waktu (on a timely basis) menjamin fungsionalitas dan integritas data. Karakteristik utama yang memberikan kesan respon instan adalah responsivitas yang dirasakan (perceived responsiveness), di mana sistem harus bekerja cukup cepat sehingga pengguna manusia (seperti operator atau pilot) tidak merasakan adanya kelambanan (sluggishness).

## Websocket

WebSocket adalah standar industri terbuka yang memungkinkan komunikasi dua arah (bidirectional) dan penuh (full-duplex) antara aplikasi klien dan server melalui Web tanpa memerlukan plugin tambahan. Teknologi ini beroperasi melalui koneksi tunggal (single-socket) yang terus terbuka setelah proses jabat tangan (handshake) awal untuk meningkatkan (upgrade) protokol HTTP ke protokol WebSocket melalui koneksi TCP yang sama. Berbeda dengan arsitektur HTTP lama yang memiliki latensi tinggi karena keterbatasan pola request-response, WebSocket sangat mengurangi latensi karena memungkinkan server mengirimkan pesan secara instan begitu data tersedia tanpa harus menunggu permintaan dari klien. Dengan karakteristik yang berbasis event (event-driven), WebSocket menyediakan kemampuan jaringan bergaya TCP bagi website untuk mendukung interaksi yang responsif dan sinkronisasi data real-time secara efisien.

## Laravel

Laravel didefinisikan sebagai kerangka kerja (framework) aplikasi web berbasis PHP dan bersifat open source yang dirancang untuk memfasilitasi pengembangan sistem yang kompleks dengan sintaks yang ekspresif dan elegan. Kerangka kerja ini mengadopsi arsitektur Model-View-Controller (MVC) dan menyediakan standar konvensi (opinionated defaults) yang membantu pengembang membangun aplikasi secara terstruktur dan efisien.

Keunggulan utama Laravel terletak pada kemampuannya menyediakan ekosistem fitur yang komprehensif dan siap pakai (out-of-the-box). Fitur-fitur krusial seperti otentikasi pengguna, mekanisme validasi input yang ketat, serta manajemen basis data melalui Eloquent ORM dan Query Builder tersedia secara bawaan. Hal ini tidak hanya mempercepat proses pengembangan, tetapi juga menjamin keamanan dan konsistensi kode program dibandingkan membangun sistem dari nol.

Dalam pengembangan aplikasi ini, Laravel difungsikan sebagai fondasi *backend* yang terintegrasi erat dengan antarmuka pengguna melalui pustaka Inertia.js. Pendekatan ini memungkinkan penerapan arsitektur *Monolith*, di mana Laravel tetap memegang kendali penuh atas manajemen *routing* dan *controller*, namun dapat merender tampilan berbasis komponen Vue.js tanpa perlu membangun RESTful API yang terpisah dan kompleks [@Stauffer2019]. 

## Unified Modelling Language (UML)

Menurut [@Booch2007] Unified Modeling Language (UML) adalah bahasa pemodelan utama yang digunakan untuk menganalisis, menentukan, dan merancang sistem perangkat lunak. UML yang dipakai di kerja praktik ini adalah diagram *use case* dan diagram *activity*.

### Diagram *Use Case*

Dalam Unified Modeling Language (UML), Use Case Diagram didefinisikan sebagai representasi visual yang menggambarkan konteks serta fungsionalitas dari sistem yang akan dibangun. Diagram ini secara spesifik memetakan interaksi antara entitas eksternal (aktor) dengan sistem. Kemampuan visualisasi ini menjadikan Use Case Diagram sebagai instrumen vital untuk menjembatani kesenjangan komunikasi dan menyelaraskan pemahaman antara pemangku kepentingan bisnis dan tim pengembang. Diagram use case secara khusus memvisualisasikan siapa (atau apa) yang berinteraksi dengan sistem serta apa yang diinginkan dunia luar agar sistem tersebut lakukan [@Booch2007]. Simbol-simbol diagram use case dapat dilihat pada Tabel berikut.

### Diagram *Activity*

Activity Diagram didefinisikan sebagai representasi visual yang menggambarkan alur aktivitas dalam suatu sistem, proses bisnis, maupun alur kerja (workflow). Diagram ini secara spesifik memfokuskan pada aktivitas-aktivitas yang dijalankan serta mengidentifikasi entitas (siapa atau apa) yang bertanggung jawab atas pelaksanaannya. Dalam tahap analisis, diagram ini menjadi instrumen fundamental untuk mendetailkan skenario use case dan memahami perilaku eksekusi sistem tingkat tinggi (high-level execution behavior) tanpa perlu melibatkan kompleksitas detail pertukaran pesan internal yang teknis [@Booch2007]. Simbol-simbol diagram activity dapat dilihat pada Tabel berikut.

## MySQL

Relational Database Management System (RDBMS) Menurut [@Hoffer2011], Relational Database Management System (RDBMS) didefinisikan sebagai sistem perangkat lunak yang dirancang khusus untuk mengimplementasikan model data relasional. Dalam konsep ini, data direpresentasikan sebagai sekumpulan tabel yang saling terhubung melalui nilai-nilai kunci yang sama (common values), bukan melalui pointer fisik. Sistem ini menyediakan metode yang terstruktur dan aman bagi pengguna untuk membuat, memelihara, serta memanipulasi data menggunakan bahasa standar yang dikenal sebagai Structured Query Language (SQL).

MySQL disebut perangkat lunak basis data *open-source* sistem manajemen basis data relasional. MySQL dikenal karena fleksibilitasnya yang dapat beroperasi di berbagai sistem operasi seperti Windows, Linux, dan Mac OS X, serta sering menjadi pilihan utama sebagai back-end penyimpanan data untuk aplikasi berbasis web. Meskipun tersedia secara gratis, MySQL menawarkan fitur-fitur tingkat lanjut seperti kemampuan replikasi bawaan (built-in replication) dan skalabilitas yang mumpuni untuk menangani aplikasi misi-kritis (mission-critical), menjadikannya solusi yang andal bagi organisasi maupun pengembang individu.

## Black Box Testing

Menurut [@Pressman2015], Black-Box Testing, yang juga dikenal sebagai pengujian perilaku (behavioral testing), merupakan metode pengujian yang berfokus pada persyaratan fungsional perangkat lunak. Berbeda dengan White-Box Testing yang membedah logika internal program, Black-Box Testing memungkinkan penguji untuk memperoleh serangkaian kondisi input yang sepenuhnya menguji semua persyaratan fungsional program tanpa perlu mengetahui struktur kode aplikasinya.

Lebih lanjut, Pressman menjelaskan bahwa metode ini berusaha menemukan kesalahan dalam beberapa kategori spesifik, yaitu fungsi yang tidak benar atau hilang, kesalahan antarmuka (*interface errors*), kesalahan dalam struktur data atau akses basis data eksternal, kesalahan perilaku atau kinerja aplikasi, serta kesalahan inisialisasi dan terminasi.


