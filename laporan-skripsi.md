# PENDAHULUAN

## Latar Belakang

Sertifikasi kompetensi merupakan bukti formal yang mengakui kemampuan dan keahlian mereka dalam bidang tertentu. Sertifikasi ini tidak hanya menunjukkan penguasaan pengetahuan teoretis, tetapi juga keterampilan praktis yang sesuai dengan standar industri. Dalam dunia kerja yang semakin kompetitif, lulusan dengan sertifikasi kompetensi memiliki nilai tambah yang signifikan di mata pemberi kerja. Dengan demikian, mahasiswa yang memiliki sertifikasi kompetensi diharapkan lebih siap menghadapi tantangan di dunia kerja modern yang terus berkembang.

Untuk mendukung kebutuhan tersebut, Universitas Tanjungpura (UNTAN) mendirikan Lembaga Sertifikasi Profesi (LSP) yang bertanggung jawab dalam menyelenggarakan proses sertifikasi kompetensi. LSP UNTAN berdiri pada tanggal 21 Agustus 2023 berdasarkan Surat Keputusan Rektor Universitas Tanjungpura No. 3214/UN22/OT.00/2023. Lembaga ini bertujuan untuk memastikan bahwa mahasiswa dapat memperoleh sertifikasi yang sesuai dengan standar industri guna meningkatkan daya saing mereka di dunia kerja. Berikut adalah struktur organisasi LSP UNTAN.

![Struktur Organisasi LSP UNTAN](images/Struktur Organisasi.png)

Namun, dalam implementasinya, proses pendaftaran sertifikasi di LSP UNTAN masih menghadapi beberapa tantangan. Saat ini, LSP UNTAN telah memiliki *website* profil, tetapi belum mendukung fitur pendaftaran secara langsung. Mahasiswa yang ingin mendaftar sertifikasi harus mengisi berkas administrasi seperti formulir APL 1 dan APL 2 melalui Google Form yang disematkan di *website* profil tersebut, yang kemudian diverifikasi oleh admin dan asesor. Jika memenuhi syarat, mahasiswa akan menerima pemberitahuan melalui email untuk mengikuti pra-asesmen sebelum dijadwalkan mengikuti asesmen. Mahasiswa juga perlu melakukan pembayaran administrasi jika direkomendasikan untuk mengikuti asesmen melalui *virtual account*. Setelah asesmen selesai dan mahasiswa dinyatakan kompeten, sertifikat akan diterbitkan. Proses yang belum terintegrasi dalam satu sistem yang terpusat ini mengakibatkan pengelolaan data menjadi kurang efisien, serta berpotensi menimbulkan kendala dalam komunikasi dan administrasi. Selain itu, penggunaan dokumen fisik dalam proses sertifikasi menyebabkan permasalahan dalam penyimpanan dan pengelolaan berkas. Dokumen yang menumpuk dapat menyulitkan pencarian data, meningkatkan risiko kehilangan atau kerusakan berkas, serta membutuhkan ruang penyimpanan yang besar.

Untuk mengatasi permasalahan ini, diperlukan solusi berbasis teknologi yang dapat meningkatkan efisiensi dan efektivitas sistem pendaftaran sertifikasi di LSP UNTAN. Salah satu solusi yang tepat adalah penerapan *Progressive Web App* (PWA). PWA merupakan aplikasi web inovatif yang mampu memberikan pengalaman pengguna mirip dengan aplikasi native, tanpa perlu diunduh dari toko aplikasi seperti Google Play atau App Store. Alasan peneliti menggunakan PWA karena memungkinkan pengembangan satu aplikasi yang dapat diakses di berbagai perangkat tanpa perlu membuat versi terpisah untuk web dan *mobile*, sehingga menghemat waktu dan sumber daya. Dengan PWA, mahasiswa dapat mengakses layanan sertifikasi kapan saja dan di mana saja dengan lebih mudah dan praktis.

Pengembangan PWA dalam sistem informasi LSP UNTAN difokuskan pada digitalisasi proses pendaftaran sertifikasi, mulai dari pengisian formulir, verifikasi dokumen, hingga pemberitahuan hasil asesmen. Dengan sistem yang lebih terintegrasi dan mudah diakses, diharapkan layanan sertifikasi menjadi lebih efisien, transparan, serta meningkatkan pengalaman pengguna bagi dari sisi mahasiswa, asesor, maupun admin.

## Perumusan Masalah

Berdasarkan latar belakang yang telah diuraikan sebelumnya, maka rumusan masalah dalam penelitian ini adalah bagaimana mengembangkan sistem informasi LSP UNTAN dengan menggunakan *Progressive Web App* (PWA) yang dapat memfasilitasi proses pendaftaran sertifikasi secara daring di Lembaga Sertifikasi Profesi (LSP) UNTAN.

## Tujuan Penelitian

Maka penelitian ini bertujuan untuk mengembangkan sistem informasi LSP UNTAN dengan menggunakan *Progressive Web App* (PWA) yang dapat memfasilitasi proses pendaftaran sertifikasi secara daring di Lembaga Sertifikasi Profesi (LSP) UNTAN.

## Pembatasan Masalah

Pembatasan masalah bertujuan untuk mempersempit ruang lingkup penelitian sehingga proses perancangan dan pengembangannya menjadi lebih fokus dan terstruktur. Adapun batasan masalah dalam penelitian ini, yaitu:

1.  Pendaftaran sertifikasi hanya mencakup sertifikasi awal dan tidak termasuk perpanjangan sertifikasi, karena LSP UNTAN merupakan P1, P1 yang mana LSP P1 tidak melayani perpanjangan sertifikasi (BNSP, 2017). LSP P1 itu sendiri adalah LSP yang didirikan oleh lembaga pendidikan dan atau pelatihan dengan tujuan utama melaksanakan sertifikasi kompetensi kerja terhadap peserta pendidikan/pelatihan berbasis kompetensi dan /atau sumber daya manusia dari jejaring kerja lembaga induknya, sesuai ruang lingkup yang diberikan oleh BNSP. LSP P2 adalah LSP yang didirikan oleh industri atau instansi dengan tujuan utama melaksanakan sertifikasi kompetensi kerja terhadap sumber daya manusia lembaga induknya, sumber daya manusia dari pemasoknya dan atau sumber daya manusia dari jejaring kerjanya, sesuai ruang lingkup yang diberikan oleh BNSP. LSP P3 adalah LSP yang didirikan oleh asosiasi industri dan/atau asosiasi profesi dengan tujuan melaksanakan sertifikasi kompetensi kerja untuk sektor dan atau profesi tertentu sesuai ruang lingkup yang diberikan oleh BNSP, artinya LSP P3 menyediakan sertifikasi bagi masyarakat umum yang memenuhi persyaratan (BNSP, 2014).

2.  Mereka yang bisa mengikuti sertifikasi adalah mahasiswa aktif UNTAN dan mahasiswa yang terafiliasi dengan UNTAN (misalnya, ada mahasiswa universitas lain yang sedang melakukan mbkm di UNTAN).

3.  Pembayaran asesmen dapat dilakukan oleh asesi melalui virutal account yang disiapkan oleh pihak LSP.

## Sistematika Penulisan

Sistematika dari penulisan tugas akhir ini dibagi menjadi 5 Bab pembahasan yaitu sebagai berikut:

**BAB I Pendahuluan** adalah bab yang menjelaskan mengenai latar belakang permasalahan, rumusan masalah, maksud dan tujuan, pembatasan masalah, dan sistematika penulisan.

**BAB II Tinjauan Pustaka** adalah bab yang menjelaskan mengenai tinjauan pustaka, dasar-dasar teori, rujukan, metode yang berhubungan dengan judul dan uraian sistematis tentang hasil-hasil penelitian yang didapat oleh penelitian terdahulu.

**BAB III Metodologi Penelitian** adalah bab yang membahas tentang diagram alir penelitian, metode penelitian, analisis kebutuhan sistem dan perancangan sistem.

**BAB IV Hasil dan Pembahasan** yaitu bab yang berisi hasil penelitian yang telah dilakukan dan hasil pengujian terhadap kinerja dari aplikasi yang telah dibangun.

**BAB V Kesimpulan dan Saran** yaitu pada bab ini memaparkan kesimpulan yang didapatkan dari aplikasi yang dibangun dan saran untuk mengembangkan aplikasi.

\newpage

# TINJAUAN PUSTAKA

## Penelitian Terkait

Dalam penelitian ini, penulis meninjau berbagai studi sebelumnya yang relevan dengan topik sertifikasi dan PWA. Penelitian-penelitian terdahulu ini menjadi landasan penting dalam pengembangan penelitian ini.

Dikutip dari jurnal penelitian terdahulu yang relevan dengan penelitian ini berjudul "Aplikasi Manajemen Pendaftaran Uji Sertifikasi Kompetensi pada Lembaga Sertifikasi Profesi Berbasis Web". Jurnal tersebut menjelaskan pengembangan aplikasi manajemen sertifikasi kompetensi berbasis web sebagai solusi untuk mengatasi permasalahan dalam proses sertifikasi yang konvensional dan memakan waktu. Aplikasi ini dirancang untuk mempermudah peserta dalam mendaftar, mengajukan dokumen, dan memantau status sertifikasi secara real-time, sehingga menghilangkan kebutuhan pertemuan fisik dan mempercepat proses administrasi. Aplikasi ini dibangun menggunakan *framework* Laravel, bahasa pemrograman PHP, dan basis data MySQL, dengan metode pengembangan *Prototipyng* yang memungkinkan perbaikan cepat terhadap desain dan kode. Pengujian aplikasi dilakukan melalui metode *User Acceptance Test* (UAT) untuk mengevaluasi kepuasan pengguna. Berdasarkan hasil perencanaan dan uji coba, aplikasi ini berhasil memenuhi kebutuhan, dengan fungsi yang baik dan tingkat kepuasan pengguna mencapai 91% [@sari2023].

Dikutip dari jurnal penelitian terdahulu yang relevan dengan penelitian ini berjudul "Aplikasi Pendaftaran Uji Kompetensi Berbasis Web untuk LSP P1 Politeknik Negeri Ambon". Jurnal tersebut menjelaskan penelitian yang dilakukan dalam membangun sebuah aplikasi pendaftaran uji kompetensi berbasis web yang bertujuan mempermudah mahasiswa dalam memperoleh informasi, mendaftarkan diri, serta menjadwalkan pelaksanaan ujian kompetensi. Aplikasi ini dikembangkan dengan metode Waterfall menggunakan bahasa pemrograman PHP dan *framework* CodeIgniter 3 serta Bootstrap versi 4. Mahasiswa dapat melakukan registrasi sebagai asesi. Administrator mengelola jadwal sertifikasi, sehingga proses pendaftaran dan penjadwalan lebih terstruktur dan efisien. Aplikasi ini diharapkan dapat mengatasi masalah administrasi, seperti tercecernya berkas pendaftaran dan ketidakefisienan waktu karena mahasiswa harus datang ke lokasi untuk proses pendaftaran (Dahoklory et al., 2024).

Dikutip dari jurnal penelitian terdahulu yang relevan dengan penelitian ini berjudul "Pengembangan Aplikasi Jurnal Emosi Berbasis *Progressive Web App*". Penelitian tersebut dilakukan untuk mengembangkan aplikasi yang bertujuan untuk menjadi alat penanganan stres untuk mengelola emosi dan suasana hati. Aplikasi dibangun dengan metode *Rapid Applicaiton Development*, framework Vue JS, dan Backend Firebase. Aplikasi ini memiliki hasil pengujian *System Usability Scale* sebesar 88.25%. Aplikasi itu mampu mencatat dan melacak perubahan emosi pengguna serta mampu dijalankan di perangkat desktop dan mobile, dan juga dapat digunakan secara luring dengan performa yang cukup baik. Dimana aplikasi juga dapat diunduh dalam perangkat mobile layaknya aplikasi native (Putra, 2023).

Dikutip dari jurnal penelitian terdahulu yang relevan dengan penelitian ini berjudul "Prototype Aplikasi Registrasi Donor Darah Palang Merah Indonesia (PMI) Kota Bengkulu Menggunakan Metode *Progressive Web App*". Jurnal tersebut menjelaskan penelitian yang dilakukan untuk mengembangkan dan menguji sebuah aplikasi registrasi donor darah berbasis PWA yang dapat meningkatkan kemudahan dan efisiensi proses registrasi donor darah di PMI. Aplikasi dibangun dengan metode *Prototyping*, bahasa pemrograman PHP, dan basis data MySQL. Hasil penelitian menunjukkan bahwa aplikasi registrasi donor darah berbasis PWA berhasil memenuhi tujuan penelitian dan memberikan kontribusi positif bagi proses registrasi donor darah di PMI, dengan waktu tunggu yang lebih singkat dan akses informasi yang lebih cepat. Selain itu, integrasi data yang lebih baik memungkinkan petugas PMI untuk mengelola data donor dengan lebih efektif (Irawan et al., 2024).

## Lembaga Sertifikasi Profesi

Lembaga Sertifikasi Profesi (LSP) adalah organisasi independen yang dibentuk oleh para pemangku kepentingan antara lain industri, asosiasi profesi, asosiasi perusahaan dan para pakar pada sektor atau bidang keahlian tertentu yang telah diakreditasi dan memperoleh lisensi dari Badan Nasional Sertifikasi Profesi (BNSP) sebagai pelaksana uji kompetensi dan sertifikasi kompetensi. Lisensi diberikan melalui proses akreditasi oleh BNSP yang menyatakan bahwa LSP bersangkutan telah memenuhi syarat untuk melakukan kegiatan sertifikasi profesi (Hartika & Huda, 2021). Asesor adalah individu yang memahami prosedur pelaksanaan asesmen, telah mengikuti pelatihan khusus untuk menjadi asesor, dan telah memperoleh sertifikasi kompeten sebagai asesor yang diterbitkan oleh BNSP (BNSP, 2013). Asesmen adalah proses evaluasi yang mencakup pengetahuan, keterampilan, dan sikap kerja melalui pengumpulan bukti kompetensi untuk menentukan apakah kompetensi telah tercapai, serta memastikan bahwa seseorang dapat menunjukkan kompetensinya sesuai standar yang diharapkan di lingkungan kerja (BNSP, 2013). Asesi adalah tenaga kerja yang memiliki latar belakang pendidikan, pelatihan, dan/atau pengalaman kerja yang sesuai dengan standar kompetensi yang akan dinilai (BNSP, 2013).

## Sistem Informasi

Menurut Laudon & Laudon, sistem informasi didefinisikan secara teknis sebagai sekumpulan komponen yang saling berhubungan yang bekerja sama untuk mengumpulkan, memproses, menyimpan, dan mendistribusikan informasi guna mendukung pengambilan keputusan dan pengawasan dalam organisasi. Ciri khas utama dari sistem informasi adalah bahwa sistem ini bukan sekadar teknologi (hardware/software), melainkan kombinasi dari tiga dimensi utama yaitu organisasi, manajemen, dan teknologi. Sistem informasi merupakan bagian tak terpisahkan dari organisasi. Ini mencakup struktur hierarki, proses bisnis, budaya organisasi, dan orang-orang yang bekerja di dalamnya. Tugas manajemen adalah memahami situasi yang dihadapi organisasi, membuat keputusan, dan merumuskan rencana tindakan untuk memecahkan masalah organisasi. Teknologi informasi adalah alat yang digunakan manajer untuk menghadapi perubahan. Ini mencakup perangkat keras (hardware), perangkat lunak (software), teknologi pengelolaan data, dan teknologi jaringan/telekomunikasi. ada tiga aktivitas dasar yang menjadi ciri cara kerja sistem informasi dalam menghasilkan informasi. Mengumpulkan data mentah (input). Mengubah data mentah menjadi bentuk yang berarti (processing). Mentransfer informasi yang sudah diproses kepada orang atau aktivitas yang akan menggunakannya (output).

## *Progressive Web App*

Menurut (Ater, 2017), *Progressive Web App* (PWA) bukanlah sebuah kerangka kerja baru atau teknologi tunggal, melainkan serangkaian praktik terbaik dan API modern yang bekerja bersamaan. PWA dideskripsikan sebagai aplikasi web yang memanfaatkan fitur-fitur modern pada peramban untuk memberikan pengalaman pengguna yang setara dengan aplikasi *native*.

Konsep dasar PWA adalah "peningkatan progresif" (*progressive enhancement*), yang berarti aplikasi akan tetap berfungsi pada peramban lama, namun akan memberikan fitur canggih seperti kemampuan offline dan notifikasi pada peramban modern yang mendukungnya.

### *Web Manifest*

Web App Manifest adalah file berformat JSON yang menyediakan informasi mengenai aplikasi web kepada peramban. File ini memungkinkan aplikasi web untuk dipasang (*installed*) ke layar utama perangkat pengguna, memberikan pengalaman peluncuran yang mirip dengan aplikasi native.

Menurut (Ater, 2017), di dalam Web App Manifest, pengembang dapat mendefinisikan berbagai properti seperti:

1.  name dan short_name: Nama yang akan ditampilkan pada layar utama dan di bawah ikon aplikasi.
2.  icons: Daftar ikon dengan berbagai ukuran yang akan digunakan oleh sistem operasi saat aplikasi dipasang.
3.  start_url: Halaman spesifik yang akan dimuat ketika pengguna membuka aplikasi melalui ikon di layar utama.
4.  display: Mengatur tampilan aplikasi, seperti menyembunyikan bilah alamat peramban (browser UI) agar aplikasi terlihat layar penuh (standalone).

### *Service Worker*

Service Worker didefinisikan oleh (Ater, 2017) sebagai sebuah skrip yang berjalan di latar belakang peramban, terpisah dari halaman web itu sendiri. Service Worker bertindak sebagai perantara (proxy) antara aplikasi web, peramban, dan jaringan internet.

Fungsi utama Service Worker adalah memberikan kendali penuh kepada pengembang atas lalu lintas jaringan. Hal ini memungkinkan pengembang untuk memanipulasi permintaan jaringan, menyajikan respons dari cache, dan membuat aplikasi berfungsi secara *offline*. Selain itu, Service Worker memiliki siklus hidup (*lifecycle*) sendiri yang independen dari halaman web, yang memungkinkan fitur seperti *background sync* dan *push notifications* tetap berjalan meskipun halaman web telah ditutup.

### Kelebihan PWA

Berdasarkan (Ater, 2017), kelebihan utama PWA meliputi.

1.  Kemampuan Offline: PWA dapat memuat konten secara instan, bahkan ketika kondisi jaringan buruk atau tidak ada koneksi internet sama sekali, berkat teknologi Service Worker.
2.  Instalasi (Installability): Pengguna dapat menambahkan aplikasi ke layar utama (home screen) perangkat mereka tanpa harus melalui toko aplikasi (app store), menciptakan pengalaman yang terasa terintegrasi dengan perangkat.
3.  Keterlibatan Pengguna (Engagement): PWA mendukung fitur push notifications yang memungkinkan aplikasi untuk melibatkan kembali pengguna, mirip dengan aplikasi native.
4.  Kecepatan: Dengan strategi caching yang tepat, PWA dapat menghilangkan ketergantungan pada jaringan untuk memuat tampilan antarmuka pengguna (user interface), sehingga aplikasi terasa sangat cepat.

### Kekurangan Progressive Web App

(Ater, 2017) juga menyoroti tantangan atau batasan PWA, antara lain.

1.  Dukungan Peramban: Tidak semua peramban mendukung seluruh fitur PWA secara bersamaan. Misalnya, pada saat buku ini ditulis, Safari belum mendukung Service Worker, meskipun aplikasi tetap dapat berjalan sebagai situs web biasa.
2.  Batasan Platform: Meskipun PWA membawa banyak fitur native ke peramban, masih ada batasan akses ke perangkat keras tertentu dibandingkan dengan aplikasi native murni yang memiliki akses penuh ke API sistem operasi.

## PHP

PHP adalah bahasa skrip sisi-server yang memiliki kapabilitas luas dalam menangani logika aplikasi web. Keunggulan utama PHP modern terletak pada dukungannya yang masif terhadap paradigma Pemrograman Berorientasi Objek (OOP) serta penanganan tipe data kompleks seperti *array* dan *string*. Fleksibilitas ini memungkinkan PHP untuk tidak hanya menghasilkan konten HTML, tetapi juga memproses data dari berbagai jenis basis data seperti MySQL dan NoSQL, serta menghasilkan format luaran non-teks seperti PDF maupun grafik secara dinamis.

## Laravel

Laravel didefinisikan sebagai kerangka kerja (framework) aplikasi web berbasis PHP dan bersifat open source yang dirancang untuk memfasilitasi pengembangan sistem yang kompleks dengan sintaks yang ekspresif dan elegan. Kerangka kerja ini mengadopsi arsitektur Model-View-Controller (MVC) dan menyediakan standar konvensi (opinionated defaults) yang membantu pengembang membangun aplikasi secara terstruktur dan efisien.

Keunggulan utama Laravel terletak pada kemampuannya menyediakan ekosistem fitur yang komprehensif dan siap pakai (out-of-the-box). Fitur-fitur krusial seperti otentikasi pengguna, mekanisme validasi input yang ketat, serta manajemen basis data melalui Eloquent ORM dan Query Builder tersedia secara bawaan. Hal ini tidak hanya mempercepat proses pengembangan, tetapi juga menjamin keamanan dan konsistensi kode program dibandingkan membangun sistem dari nol.

Dalam pengembangan aplikasi ini, Laravel difungsikan sebagai fondasi *backend* yang terintegrasi erat dengan antarmuka pengguna melalui pustaka Inertia.js. Pendekatan ini memungkinkan penerapan arsitektur *Modern Monolith*, di mana Laravel tetap memegang kendali penuh atas manajemen *routing* dan *controller*, namun dapat merender tampilan berbasis komponen Vue.js tanpa perlu membangun RESTful API yang terpisah dan kompleks.

Fitur *Migrations* tetap digunakan untuk manajemen skema basis data MySQL agar terorganisir, sementara validasi data dilakukan melalui *Form Requests* untuk memastikan integritas data sebelum dikirimkan sebagai *props* ke komponen Vue.js di sisi klien.

## Javascript

JavaScript adalah bahasa pemrograman tingkat tinggi, dinamis, dan *interpreted* yang sangat cocok untuk gaya pemrograman berorientasi objek maupun fungsional. Flanagan menyebutnya sebagai "bahasa pemrograman Web" (*The programming language of the Web*) karena mayoritas situs web modern menggunakannya untuk menciptakan pengalaman pengguna yang interaktif.

Keunggulan utama JavaScript modern terletak pada fleksibilitas dan ekosistemnya yang luas. Bahasa ini tidak lagi hanya berjalan di sisi klien (*client-side*) untuk memanipulasi elemen HTML, tetapi juga memiliki kemampuan untuk menangani proses asinkron (*asynchronous*) yang kompleks. Hal ini memungkinkan aplikasi untuk melakukan permintaan data ke server tanpa perlu memuat ulang halaman (*reload*), serta menjalankan skrip di latar belakang yang terpisah dari halaman utama.

Dalam penelitian ini, JavaScript memegang peranan fundamental sebagai bahasa inti pembangun aplikasi. Penggunaan JavaScript sangat krusial untuk dua hal:

1.  Menjalankan kerangka kerja Vue.js dan pustaka Inertia.js untuk membentuk antarmuka yang reaktif.
2.  Menulis dan mengeksekusi *Service Worker*, yaitu skrip JavaScript yang berjalan di latar belakang browser untuk memungkinkan fitur *Progressive Web App* (PWA) seperti kemampuan akses *offline* dan *caching* aset.

## Vuejs

Berdasarkan dokumentasi resminya (Vue.js Team, 2024), Vue.js didefinisikan sebagai kerangka kerja (framework) JavaScript yang bersifat progresif dan dirancang khusus untuk membangun antarmuka pengguna (User Interface). Karakteristik utama yang membedakan Vue.js adalah desainnya yang incrementally adoptable, yang berarti kerangka kerja ini dapat diadopsi secara bertahap mulai dari penambahan interaktivitas sederhana pada halaman web statis hingga pembangunan aplikasi frontend yang kompleks. Fokus utama dari pustaka inti (core library) Vue.js adalah pada lapisan tampilan (view layer), menjadikannya ringan dan mudah diintegrasikan.

Keunggulan Vue.js terletak pada fleksibilitas arsitekturnya yang memungkinkan integrasi mulus dengan pustaka lain. Sistem intinya dirancang untuk memiliki performa tinggi dengan ukuran berkas yang ringan, namun tetap didukung oleh ekosistem fitur yang komprehensif untuk kebutuhan aplikasi modern. Selain itu, model pemrograman Vue.js yang deklaratif dan berbasis komponen memudahkan pengelolaan elemen visual yang kompleks menjadi lebih terstruktur dan dapat digunakan kembali (reusable).

Dalam penelitian ini, Vue.js diimplementasikan sebagai teknologi sisi klien (client-side) yang bekerja secara sinergis dengan Laravel melalui jembatan Inertia.js. Vue.js bertugas menangani perenderan komponen antarmuka yang reaktif dan mengelola state aplikasi secara lokal. Kombinasi ini sangat krusial dalam arsitektur Progressive Web App (PWA) yang dibangun, karena kemampuan Vue.js dalam memanipulasi DOM (Document Object Model) secara efisien memungkinkan aplikasi memberikan pengalaman pengguna yang responsif dan cepat menyerupai aplikasi native, tanpa memerlukan pemuatan ulang halaman secara penuh.

## Inertia

Berdasarkan dokumentasi resminya (Inertia.js, 2024), Inertia.js didefinisikan bukan sebagai sebuah kerangka kerja (framework), melainkan sebagai pustaka penghubung (glue code) yang menjembatani kesenjangan antara kerangka kerja sisi server (server-side frameworks) seperti Laravel dengan kerangka kerja sisi klien (client-side frameworks) seperti Vue.js. Inertia memungkinkan pengembang untuk membangun aplikasi satu halaman penuh (Single Page Application/SPA) menggunakan pola pikir pengembangan aplikasi klasik (Multi-Page Application).

Keunggulan utama Inertia.js adalah kemampuannya menciptakan arsitektur "Modern Monolith". Dengan Inertia, pengembang tidak perlu membangun dan mengelola REST API yang kompleks ataupun menangani routing di sisi klien. Inertia bekerja dengan mekanisme *client-side routing*. Saat pengguna berpindah halaman, Inertia mencegat permintaan tersebut dan mengirimkannya ke server sebagai permintaan asinkron (AJAX) dengan header khusus. Laravel kemudian secara cerdas merespons dengan objek JSON yang berisi nama komponen dan data (*props*), bukan dokumen HTML utuh, sehingga Vue.js dapat memperbarui tampilan secara instan tanpa memuat ulang browser.

Dalam penelitian ini, Inertia.js memegang peranan vital sebagai pengikat arsitektur sistem. Teknologi ini memungkinkan logika bisnis dan validasi data tetap terpusat di Laravel (backend), sementara interaktivitas antarmuka dikelola oleh Vue.js (frontend). Hal ini menyederhanakan proses pengembangan aplikasi PWA secara signifikan karena meniadakan kebutuhan akan sinkronisasi state yang rumit antara klien dan server.

## *System Development Life Cycle* (SDLC)

Dennis, Wixom, dan Roth mendefinisikan Systems Development Life Cycle (SDLC) sebagai proses untuk menentukan bagaimana sebuah sistem informasi dapat mendukung kebutuhan bisnis, merancangnya, membangunnya, dan menyerahkannya kepada pengguna.

Untuk mengimplementasikan siklus hidup pengembangan sistem tersebut, penelitian ini menggunakan model Waterfall yang dikemukakan oleh Ian Sommerville. Sommerville mendefinisikan model Waterfall sebagai pendekatan yang mengambil aktivitas proses fundamental seperti spesifikasi, pengembangan, validasi, dan evolusi dan merepresentasikannya sebagai fase-fase proses yang terpisah dan berurutan, seperti sebuah air terjun. Karena sifatnya yang mengalir dari satu fase ke fase berikutnya.

Kelebihan dari *waterfall* adalah kualitas dari sistem yang dihasilkan akan baik, karena pelaksanaannya dilakukan secara bertahap. Proses pengembangan model fase *one by one*, sehingga meminimalisir kesalahan yang mungkin akan terjadi (Wahid, 2020).

![Waterfall](images/waterfall-sommerville.png)

Berikut adalah tahapan-tahapan dari metode *waterfall* (Sommerville, 2011).

a.  *Requirements Definition*

    > Tahap ini bertujuan untuk mengumpulkan kebutuhan sistem termasuk batasan dan layanan yang akan ditawarkan oleh sistem melalui komunikasi dengan pengguna.

b.  *System and Software Design*

    > Proses perancangan sistem mengalokasikan persyaratan ke sistem perangkat keras atau perangkat lunak dengan membangun arsitektur sistem secara keseluruhan. Perancangan perangkat lunak melibatkan identifikasi dan penggambaran abstraksi sistem perangkat lunak fundamental dan hubungan di antara mereka.

c.  *Implementation and Unit Testing*

    > Selama tahap ini, desain perangkat lunak diwujudkan dalam bentuk serangkaian program atau unit program. Pengujian unit melibatkan verifikasi bahwa setiap unit memenuhi spesifikasinya.

d.  *Integration and System Testing*

    > Unit-unit program atau program-program individual diintegrasikan dan diuji sebagai suatu sistem yang lengkap untuk memastikan bahwa persyaratan perangkat lunak telah terpenuhi. Setelah pengujian, sistem perangkat lunak dikirimkan kepada pelanggan.

e.  *Operation and Maintenance*

    > Umumnya, ini adalah fase siklus hidup terpanjang. Sistem dipasang dan digunakan secara praktis. Pemeliharaan melibatkan perbaikan kesalahan yang tidak ditemukan pada tahap awal siklus hidup, peningkatan implementasi unit sistem, dan peningkatan layanan sistem saat persyaratan baru ditemukan.

## *Unified Modelling Language* (UML)

Menurut Booch Unified Modeling Language (UML) adalah bahasa pemodelan utama yang digunakan untuk menganalisis, menentukan, dan merancang sistem perangkat lunak.

### Diagram *Use Case*

Dalam Unified Modeling Language (UML), Use Case Diagram didefinisikan sebagai representasi visual yang menggambarkan konteks serta fungsionalitas dari sistem yang akan dibangun. Diagram ini secara spesifik memetakan interaksi antara entitas eksternal (aktor) dengan sistem. Kemampuan visualisasi ini menjadikan Use Case Diagram sebagai instrumen vital untuk menjembatani kesenjangan komunikasi dan menyelaraskan pemahaman antara pemangku kepentingan bisnis dan tim pengembang. Simbol-simbol diagram use case dapat dilihat pada Tabel berikut.

### Diagram *Activity*

Menurut Booch et al. (2007), Activity Diagram didefinisikan sebagai representasi visual yang menggambarkan alur aktivitas dalam suatu sistem, proses bisnis, maupun alur kerja (workflow). Diagram ini secara spesifik memfokuskan pada aktivitas-aktivitas yang dijalankan serta mengidentifikasi entitas (siapa atau apa) yang bertanggung jawab atas pelaksanaannya. Dalam tahap analisis, diagram ini menjadi instrumen fundamental untuk mendetailkan skenario use case dan memahami perilaku eksekusi sistem tingkat tinggi (high-level execution behavior) tanpa perlu melibatkan kompleksitas detail pertukaran pesan internal yang teknis.

### Diagram *Class*

Diagram *Class* merupakan sebuah diagram yang merepresentasikan struktur logis dari sebuah sistem. Diagram ini memvisualisasikan keberadaan kelas-kelas serta hubungan (*relationships*) yang terjalin di antaranya. Selama analisis, diagram class digunakan untuk menunjukkan peran dan tanggung jawab umum entitas yang menentukan perilaku sistem. Selama perancangan, diagram class digunakan untuk menggambarkan struktur kelas-kelas yang membentuk arsitektur sistem.

## ERD

Entity Relationship Diagram (ERD) Menurut Elmasri dan Navathe, Entity-Relationship Diagram (ERD) adalah model data konseptual tingkat tinggi yang digunakan pada fase perancangan basis data. Diagram ini berfungsi sebagai notasi visual untuk menyusun skema konseptual, yaitu deskripsi ringkas namun detail mengenai kebutuhan data pengguna tanpa melibatkan detail implementasi teknis. Karena sifatnya yang independen dari aspek teknis, ERD menjadi alat komunikasi yang efektif antara perancang sistem dan pengguna awam (non-technical users).

Komponen utama dalam ERD meliputi entitas, atribut, dan hubungan (relationships) antar entitas tersebut. Diagram ini juga memetakan batasan struktural (structural constraints) seperti rasio kardinalitas (misalnya 1:1 atau 1:N) dan batasan partisipasi untuk memastikan integritas hubungan antar data.

Data Dictionary (Kamus Data) Data Dictionary, atau sering disebut katalog DBMS, didefinisikan oleh Elmasri dan Navathe sebagai repositori penyimpanan metadata—yaitu data yang mendeskripsikan struktur basis data itu sendiri. Di dalamnya tersimpan definisi skema lengkap, mulai dari nama file, tipe data, format penyimpanan, hingga batasan-batasan (constraints) yang berlaku.

Perangkat lunak DBMS menggunakan katalog ini sebagai acuan utama saat mengakses atau memanipulasi data untuk memastikan bahwa setiap perubahan status data tetap valid dan sesuai dengan aturan struktur yang telah didefinisikan sebelumnya.

## MySQL

Relational Database Management System (RDBMS) Menurut Hoffer, Ramesh, dan Topi (2011), Relational Database Management System (RDBMS) didefinisikan sebagai sistem perangkat lunak yang dirancang khusus untuk mengimplementasikan model data relasional. Dalam konsep ini, data direpresentasikan sebagai sekumpulan tabel yang saling terhubung melalui nilai-nilai kunci yang sama (common values), bukan melalui pointer fisik. Sejak kemunculannya pada tahun 1980-an, RDBMS telah menjadi teknologi dominan dalam industri pengelolaan data. Sistem ini menyediakan metode yang terstruktur dan aman bagi pengguna untuk membuat, memelihara, serta memanipulasi data menggunakan bahasa standar yang dikenal sebagai Structured Query Language (SQL).

MySQL Sebagai salah satu implementasi nyata dari RDBMS, Hoffer et al. (2011) mengklasifikasikan MySQL sebagai perangkat lunak basis data open-source yang sangat populer dan kompetitif. MySQL dikenal karena fleksibilitasnya yang dapat beroperasi di berbagai sistem operasi seperti Windows, Linux, dan Mac OS X, serta sering menjadi pilihan utama sebagai back-end penyimpanan data untuk aplikasi berbasis web. Meskipun tersedia secara gratis, MySQL menawarkan fitur-fitur tingkat lanjut seperti kemampuan replikasi bawaan (built-in replication) dan skalabilitas yang mumpuni untuk menangani aplikasi misi-kritis (mission-critical), menjadikannya solusi yang andal bagi organisasi maupun pengembang individu.

## *Black Box Testing*

Menurut Pressman (2010), Black-Box Testing, yang juga dikenal sebagai pengujian perilaku (behavioral testing), merupakan metode pengujian yang berfokus pada persyaratan fungsional perangkat lunak. Berbeda dengan White-Box Testing yang membedah logika internal program, Black-Box Testing memungkinkan penguji untuk memperoleh serangkaian kondisi input yang sepenuhnya melatih semua persyaratan fungsional program tanpa perlu mengetahui struktur kontrol internalnya.

Lebih lanjut, Pressman menjelaskan bahwa metode ini berusaha menemukan kesalahan dalam beberapa kategori spesifik, yaitu: (1) fungsi yang tidak benar atau hilang; (2) kesalahan antarmuka (interface errors); (3) kesalahan dalam struktur data atau akses basis data eksternal; (4) kesalahan perilaku atau kinerja; serta (5) kesalahan inisialisasi dan terminasi.

Oleh karena itu, pendekatan Black-Box Testing sangat bergantung pada validitas fungsional dari sudut pandang pengguna. Untuk menerapkan pengujian ini secara efektif pada aplikasi berbasis web modern, diperlukan alat bantu otomatisasi yang mampu mensimulasikan interaksi pengguna secara nyata di dalam peramban (browser). Salah satu kerangka kerja (framework) yang dirancang khusus untuk memenuhi kebutuhan pengujian end-to-end ini adalah Cypress.

Cypress merupakan alat pengujian otomatis untuk aplikasi web yang mengeksekusi tes end-to-end (E2E) langsung di dalam lingkungan browser. Berbeda dengan alat lain yang bergantung pada driver eksternal, Cypress memanfaatkan event DOM untuk memberikan hasil yang lebih cepat dan stabil. Fitur utamanya meliputi real-time feedback, mekanisme automatic waiting untuk memastikan elemen siap sebelum dieksekusi, serta kemudahan integrasi dengan CI/CD seperti GitLab.

\newpage

# METODOLOGI PENELITIAN

## Tahapan Penelitian

Tahapan pelaksanaan dalam penelitian yang telah peneliti rencanakan dan tahapan tersebut berfungsi menjadi panduan dalam proses pelaksanaan dalam melakukan penelitian, alur tahapan dapat dilihat pada Gambar \ref{fig:tahap-pen} berikut.

![Tahapan Penelitian \label{fig:tahap-pen}](images/tahapan-penelitian.png)

## Pengumpulan Data

Pada tahap ini, peneliti melakukan pengumpulan data dengan tiga metode yaitu studi pustaka yang merujuk pada penelitian-penelitian sebelumnya yang relevan dengan penelitian sekarang yang akan dilakukan. Wawancara dengan berinteraksi kepada narasumber melalui sesi tanya jawab untuk memahami seperti apa pendaftaran sertifikasi di LSP UNTAN. Mengidentifikasi kebutuhan pengguna seperti sistem pendaftaran seperti apa yang dibutuhkan oleh LSP UNTAN. Dan Observasi, observasi yang dilakukan oleh peneliti adalah observasi dokumen, yaitu dokumen APL 1 dan APL 2.

## Analisis Kebutuhan

Setelah data terkumpul, dilakukan analisis untuk menentukan kebutuhan fungsional dan non-fungsional sistem. Hasil dari tahap ini adalah daftar fitur yang harus ada untuk memenuhi kebutuhan Admin, Asesor, dan Asesi, serta batasan kualitas sistem yang mengacu pada standar ISO/IEC 25010

### Kebutuhan Fungsional

Kebutuhan fungsional menggambarkan fungsi atau layanan yang harus disediakan oleh sistem untuk memenuhi kebutuhan pengguna. Berdasarkan hasil pengumpulan data, kebutuhan fungsional sistem informasi LSP UNTAN adalah sebagai berikut.

A. Kebutuhan Admin

1. Sistem harus dapat menampilkan ringkasan data pendaftaran dan statistik pada halaman Dashboard
2. Sistem harus dapat mengelola data skema sertifikasi.
3. Sistem harus dapat mengelola data sertifikasi
4. Sistem harus dapat menampilkan log aktivitas untuk memantau perubahan data.
5. Sistem harus dapat mengelola akun pengguna.
6. Sistem harus dapat mengelola sertifikat asesi

B. Kebutuhan Asesor

1. Sistem harus dapat memfasilitasi pengelolaan asesmen.
2. Sistem harus dapat mengelola data asesi yang berada di bawah pengawasannya.

C. Kebutuhan Bersama (Admin dan Asesor)

1. Sistem harus dapat mengelola pengumuman pada sertifikasi tertentu.
2. Sistem harus dapat mengelola data asesi.

D. Kebutuhan Asesi

1. Sistem harus dapat mengelola data profil asesi
2. Sistem harus dapat memfasilitasi pendaftaran pada skema sertifikasi yang berlangsung.
3. Sistem harus dapat mengunggah dokumen persyaratan pendaftaran dan hasil asesmen.
4. Sistem harus dapat melihat pengumuman sertifikasi yang diikuti asesi dan mengunduh sertifikat.

## Perancangan Sistem

Berdasarkan analisis kebutuhan, tahapan perancangan diawali dengan pendefinisian Arsitektur Sistem untuk menggambarkan alur komunikasi data antar pengguna dengan sistem. Selanjutnya, peneliti merancang detail fungsionalitas perangkat lunak menggunakan Unified Modeling Language (UML) seperti Use Case Diagram, Activity Diagram dan Class Diagram, serta perancangan basis data menggunakan Entity Relationship Diagram (ERD).

### Arsitektur Sistem

![Arsitektur Sistem](images/arsitektur-sistem.png)

Gambar 3.1 menunjukkan arsitektur aplikasi, aktor-aktor yang terlibat dalam aplikasi ini adalah admin, asesor, dan asesi. Ketiga aktor ini melalui device mereka dan sistem informasinya saling mengirim request dan response. misalnya aktor admin ingin membuka halaman login, request get tersebut akan dikirim ke server (yg dalam hal ini sistem informasi ini dan database), kemudian server akan mengirim response berupa tampilan login.

### Usecase Diagram

Diagram *use case* yang dibuat dalam penelitian ini dapat dilihat pada Gambar berikut.

![Usecase Diagram](images/usecase.png)

Diagram *use case* menggambarkan interaksi antara aktor dengan sistem dalam suatu aplikasi. Pada perancangan use case sistem informasi LSP UNTAN terdapat tiga aktor yang terlibat yaitu admin, asesor, dan asesi. Untuk lebih jelas dapat dilihat pada spesifikasi usecase berikut.

#### Spesifikasi Usecase Melihat Dashboard
Spesifikasi ini menjelaskan bagaimana aktor Admin, Asesor, dan Mahasiswa dapat mengakses halaman utama sistem untuk melihat ringkasan informasi atau statistik sesuai dengan peran yang dimiliki.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Melihat Dashboard} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Menyajikan ringkasan informasi, statistik penting, dan notifikasi status terkini sesuai dengan hak akses \\ \hline
Aktor & Admin, Asesor, Asesi \\ \hline
Pre-condition & Aktor sudah login \\ \hline
Main Flow & 
A. Aktor buka halaman dashboard. \newline
B. Sistem mengambil data rekapitulasi yang relevan. \newline
C. Sistem tampilkan halaman dashboard dengan widget informasi sesuai dengan peran. \\ \hline
Post-condition & Aktor memperoleh gambaran umum mengenai status kegiatan sertifikasi di dalam sistem. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Skema Sertifikasi

Use case ini mendeskripsikan prosedur bagi Admin untuk melakukan manajemen data skema sertifikasi, termasuk fungsi menambah, memperbarui, serta menghapus data skema pada basis data.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Mengelola Data Skema Sertifikasi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mengelola data skema sertifikasi \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin sudah login dan berada di halaman skema \\ \hline
Main Flow & 
A. Admin memilih tambah/edit data skema. \newline
B. Admin memasukkan data skema (nama, format file APL 1, 2, dst). \newline
C. Admin menekan tombol simpan. \newline
D. Sistem simpan. \\ \hline
Alternative Flow &
Kondisi 1 : Menghapus data skema. \newline
A1. Admin menekan tombol hapus pada salah satu skema. \newline
A2. Sistem meminta konfirmasi. \newline
A3. Admin mengonfirmasi. \newline
A4. Jika skema pernah terlibat di sertifikasi, sistem tampilkan pesan error. \newline
A5. Jika tidak, sistem hapus data skema. \\ \hline
Post-condition &
Jika simpan: Data skema tersimpan dan tersedia sebagai pilihan saat input data asesor. \newline
Jika hapus sukses: Data skema terhapus dari sistem. \newline
Jika hapus gagal: Data skema tetap ada dan tidak berubah. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Asesor
Spesifikasi ini menjelaskan alur kerja Admin dalam mengelola akun asesor, yang meliputi pendaftaran data identitas serta pemberian otoritas terhadap skema sertifikasi tertentu.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Asesor} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mengelola akun asesor \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin telah login dan berada di halaman asesor \\ \hline
Main Flow &
A. Admin memilih tambah/edit data asesor. \newline
B. Admin memasukkan data asesor (email, nama, dan skema sertifikasi yang diampu). \newline
C. Admin menekan tombol simpan. \newline
D. Sistem menyimpan data. \newline
E. Jika data baru, sistem mengirimkan email aktivasi ke asesor. \\ \hline
Pragmatic Flow &
Kondisi 1 : Menghapus data asesor. \newline
A1. Admin menekan tombol hapus pada salah satu asesor. \newline
A2. Sistem meminta konfirmasi. \newline
A3. Admin mengonfirmasi. \newline
A4. Jika asesor sudah pernah terlibat di sertifikasi, sistem tampilkan pesan error. \newline
A5. Jika tidak, sistem hapus data asesor. \\ \hline
Post-condition &
Jika simpan: Akun asesor terbentuk dan email aktivasi terkirim. \newline
Jika hapus sukses:Data asesor terhapus dari sistem. \newline
Jika hapus gagal:Data asesor tetap ada dan tidak berubah. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Pengguna
Use case ini memaparkan alur kerja Admin dalam melakukan kontrol akses terhadap seluruh entitas pengguna (Admin, Asesor, dan Asesi) yang telah teregistrasi. Spesifikasi ini mencakup penangguhan akses (banning) bagi pengguna yang melanggar ketentuan, maupun pemulihan akses (un-banning) guna menjamin integritas penggunaan sistem.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Pengguna} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mengelola status validasi dan hak akses login akun pengguna demi keamanan sistem. \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin telah login dan berada di halaman daftar pengguna \\ \hline
Main Flow & 
A. Admin menekan tombol aksi perubahan status (Ban/Un-ban) pada salah satu pengguna. \newline
B. Sistem menampilkan pesan konfirmasi perubahan status. \newline
C. Admin mengonfirmasi tindakan tersebut. \newline
D. Sistem memperbarui status pengguna. \\ \hline
Post-condition &
Jika Ban: Pengguna tidak bisa login. \newline
Jika Un-ban: pengguna bisa login kembali. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Melihat Log Aktivitas Sistem
Spesifikasi use case ini mendeskripsikan proses pemantauan jejak audit (audit trail) oleh Admin terhadap setiap aktivitas dan perubahan data yang terjadi di dalam sistem. Fitur ini dirancang untuk meningkatkan aspek akuntabilitas dan keamanan, sehingga setiap tindakan yang dilakukan oleh aktor di dalam Sistem Informasi LSP UNTAN dapat ditelusuri secara kronologis.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Melihat Log Aktivitas Sistem} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Memantau riwayat aktivitas dan perubahan data sistem untuk kebutuhan audit trail. \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin telah melakukan login \\ \hline
Main Flow & A. Admin buka halaman log. \newline
B. Admin menekan tombol 'Detail' pada salah satu baris log. \newline
C. Sistem menampilkan rincian riwayat perubahan data. \\ \hline
Post-condition & Admin memperoleh rincian informasi riwayat perubahan data pada sistem. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Sertifikasi
Use case ini menjelaskan langkah-langkah Admin dalam menginisiasi sebuah periode sertifikasi, mulai dari pengaturan kuota, penentuan asesor, hingga penentuan jadwal pelaksanaan.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Sertifikasi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Membuka, memperbarui, atau membatalkan jadwal sertifikasi \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin telah login dan data Skema serta data Asesor sudah tersedia di database. \\ \hline
Main Flow & 
A. Admin memasukkan data (memilih skema, asesor, periode daftar, lokasi, biaya, nomor rekening bank). \newline
B. Admin menekan tombol simpan. \newline
C. Sistem simpan data sertifikasi dengan status berlangsung. \\ \hline
Pragmatic Flow &
Kondisi 1: Membatalkan Sertifikasi \newline
A1. Admin memilih sertifikasi yang ingin diubah. \newline
A2. Admin mengubah status menjadi 'Dibatalkan'. \newline
A3. Admin menekan tombol simpan. \newline
A4. Sistem simpan sehingga asesi tidak dapat lagi melakukan pendaftaran. \\ \hline
Post-condition & 
Jika Simpan: Asesi dapat melakukan pendaftaran. \newline
Jika Dibatalkan: Sertifikasi tetap tercatat di sistem namun akses pendaftaran ditutup untuk asesi. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Pengumuman Sertifikasi
Deskripsi ini menjelaskan bagaimana Admin atau Asesor mempublikasikan informasi penting terkait jalannya sertifikasi kepada para asesi melalui modul pengumuman.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Pengumuman Sertifikasi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Menyebarluaskan informasi atau instruksi penting terkait kegiatan sertifikasi kepada asesi untuk sertifikasi terkait \\ \hline
Aktor & Admin, Asesor \\ \hline
Pre-condition & Aktor telah melakukan login dan masuk ke halaman pengumuman \\ \hline
Main Flow &
A. Aktor buat/ubah teks pengumuman. \newline
B. Aktor menekan tombol simpan. \newline
C. Sistem simpan dan memberikan notifikasi ke asesi. \\ \hline
Pragmatic Flow &
Kondisi 1: Menghapus pengumuman yang ada. \newline
A1. Aktor menekan tombol hapus pada pengumuman yang ada. \newline
A2. Sistem menampilkan pesan konfirmasi. \newline
A3. Aktor mengonfirmasi dan sistem menghapus data tersebut. \\ \hline
Post-condition & 
Jika Simpan: Pengumuman terpublikasi dan dapat dilihat oleh asesi. \newline
Jika Hapus: Pengumuman dihapus dari sistem dan tidak lagi muncul di halaman asesi. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Asesmen
Spesifikasi ini menunjukkan alur bagi Asesor untuk menetapkan persyaratan teknis atau instruksi kerja yang harus dipenuhi oleh asesi sebagai bagian dari syarat uji kompetensi.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Asesmen} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mengelola instruksi asesmen serta mengakses berkas-berkas hasil pengerjaan asesi untuk keperluan validasi secara luring \\ \hline
Aktor & Asesor \\ \hline
Pre-condition & Asesor telah melakukan login dan memilih skema sertifikasi yang sedang aktif diampu. \\ \hline
Main Flow &
A. Asesor buat/ubah teks instruksi asesmen pada sistem. \newline
B. Asesor menekan tombol simpan.  \newline
C. Sistem simpan dan memberikan notifikasi kepada asesi yang hak akses ke asesmennya sudah diberikan. \newline
D. Asesor melihat daftar unggahan berkas asesmen yang dikumpulkan asesi. \newline
E. Asesor mengunduh berkas-berkas tersebut untuk dilakukan peninjauan secara luring. \\ \hline
Pragmatic Flow &
Kondisi 1: Menghapus instruksi asesmen yang ada. \newline
A1. Asesor menekan tombol hapus pada instruksi yang ada. \newline
A2. Sistem menampilkan pesan konfirmasi. \newline
A3. Asesor mengonfirmasi dan sistem menghapus data tersebut. \\ \hline
Post-condition &
Jika Simpan: Instruksi asesmen terpublikasi dan berkas asesi berhasil diunduh. \newline
Jika Hapus: Instruksi terhapus dari sistem dan tidak lagi terlihat oleh asesi. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Asesi
Use case ini merinci proses verifikasi berkas dan penentuan status kelayakan asesi yang dilakukan oleh Admin atau Asesor guna memantau perkembangan proses sertifikasi tiap peserta.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Asesi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Memvalidasi kelengkapan administrasi, memberikan hak asesmen, dan menetapkan hasil akhir sertifikasi. \\ \hline
Aktor & Admin, Asesor \\ \hline
Pre-condition & Aktor telah melakukan login dan data pendaftaran asesi tersedia. \\ \hline
Main Flow & 
A. Aktor membuka daftar asesi dan memilih salah satu asesi untuk melihat detail. \newline
B. Aktor memilih dan menekan tombol simpan pada salah satu perubaha status berikut. \newline
1. Mengubah status berkas (perlu perbaikan / sudah lengkap). \newline
2. Mengubah hak akses asesmen (belum diberikan / diberikan). \newline
3. Mengubah status final (belum ditentukan / belum kompeten / kompeten / diskualifikasi). \newline
C.	Sistem simpan dan memberikan notifikasi kepada asesi. \\ \hline
Post-condition & Status asesi diperbarui. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Kelola Sertifikat Asesi
Spesifikasi ini menjelaskan prosedur bagi Admin untuk mengunggah dokumen digital sertifikat kompetensi bagi asesi yang telah dinyatakan lulus dan memenuhi syarat.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Kelola Sertifikat Asesi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mendokumentasikan data sertifikat dan mengunggah sertifikat digital untuk asesi yang kompeten. \\ \hline
Aktor & Admin \\ \hline
Pre-condition & Admin telah melakukan login dan Asesi memiliki status .final 'kompeten' \\ \hline
Main Flow & A. Admin menekan tombol unggah sertifikat. \newline
B. Admin mengisi data sertifikat (nomor registrasi, tanggal terbit, tanggal kadaluarsa, file sertifikat). \newline
C. Admin menekan tombol simpan. \newline
D. Sistem simpan dan notifikasi asesi. \\ \hline
Pragmatic Flow & Kondisi 1: Menghapus sertifikat. \newline
B1. Admin menekan tombol Hapus. \newline
B2. Sistem tampilkan konfirmasi. \newline
B3. Admin mengonfirmasi. \newline
B4. Sistem hapus sertifikat. \\ \hline
Post-condition & Jika simpan: Data sertifikat tercatat dan file sertifikatnya tersedia untuk diunduh oleh asesi. \newline
Jika hapus: Data sertifikat terhapus dan asesi tidak lagi bisa akses. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Mendaftar Sertifikasi
Spesifikasi ini menjelaskan tahapan yang dilalui oleh Asesi untuk memilih skema yang diinginkan, mengisi formulir pendaftaran, hingga pengajuan berkas pendaftaran ke sistem.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Mendaftar Sertifikasi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Mengajukan permohonan sertifikasi dengan melengkapi data diri dan mengunggah berkas persyaratan. \\ \hline
Aktor & Asesi \\ \hline
Pre-condition & Asesi telah login dan status jadwal dari sertifikasi yang ingin didaftar adalah 'dibuka'. \\ \hline
Main Flow & A. Asesi membuka halaman jadwal sertifikasi dan menekan tombol 'Daftar' pada skema sertifikasi. \newline
B. Asesi mengisi data diri dan berkas-berkas persyaratan. \newline
C. Asesi menekan tombol 'Daftar'. \newline
D. Sistem simpan data, mengubah status berkas asesi menjadi 'menunggu verifikasi berkas', dan mengirim notifikasi ke Admin dan Asesor. \newline
E. Sistem mengarahkan asesi ke halaman detail status pendaftarannya. \\ \hline
Post-condition & Jika simpan: Data pendaftaran tersimpan. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Lihat Detail & Status Pendaftaran
Use case ini menunjukkan prosedur bagi Asesi untuk memantau progres pendaftaran mereka dan melihat detail dokumen yang telah dikirimkan sebelumnya.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Lihat Detail dan Status Pendaftaran} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Memantau perkembangan proses sertifikasi, melihat kembali berkas yang telah dikirim, serta mengetahui hasil validasi dari admin/asesor. \\ \hline
Aktor & Asesi \\ \hline
Pre-condition & Asesi telah login dan mendaftar pada sebuah sertifikasi. \\ \hline
Main Flow & A. Asesi mengakses halaman sertifikasi. \newline
B. Asesi menekan tombol 'lihat status' pada sertifikasi yang didaftar. \newline
C. Sistem menampilkan informasi lengkap pendaftaran seperti detail skema yang diikuti, daftar berkas yang telah diunggah, status terkini. \\ \hline
Post-condition & Asesi mendapatkan informasi terbaru mengenai perkembangan pendaftaran sertifikasinya. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Akses Pengumuman Sertifikasi
Deskripsi ini menjelaskan bagaimana Asesi dapat mengakses dan membaca setiap informasi atau pengumuman resmi yang dibagikan oleh pengelola LSP UNTAN.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Akses Pengumuman Sertifikasi} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Memperoleh informasi terkini dan pengumuman jadwal terkait proses sertifikasi. \\ \hline
Aktor & Asesi \\ \hline
Pre-condition & Asesi telah login dan mendaftar pada sebuah sertifikasi. \\ \hline
Main Flow & A. Asesi mengakses menu pengumuman. \newline
B. Sistem menampilkan daftar pengumuman terbaru. \newline
C. Asesi menekan salah satu pengumuman untuk melihat isi lengkapnya. \newline
D. Sistem menampilkan konten detail pengumuman. \\ \hline
Post-condition & Asesi mendapatkan informasi terkini terkait proses sertifikasi yang sedang berjalan. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Unggah Tugas Asesmen
Spesifikasi ini merinci tahapan pengiriman tugas atau bukti kompetensi oleh Asesi kepada Asesor, yang hanya dapat dilakukan jika syarat administrasi dan pembayaran telah terpenuhi.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Unggah Tugas Asesmen} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Menyerahkan dokumen bukti kompetensi atau tugas asesmen ke asesor. \\ \hline
Aktor & Asesi \\ \hline
Pre-condition & Asesi telah melakukan login dan Asesi memiliki hak akses ke menu asesmen. \\ \hline
Main Flow & A. Asesi mengakses menu asesmen. \newline
B. Asesi unggah file tugas/asesmen (format zip/pdf/docx) sesuai instruksi. \newline
C. Asesi tekan kumpulkan. \newline
D. Sistem simpan dan notifikasi asesor. \\ \hline
Pragmatic Flow & Kondisi 1: Melewati batas waktu pengumpulan \newline
B1. Sistem mendeteksi waktu server saat ini telah melewati batas deadline. \newline
B2. Sistem menyembunyikan fungsi unggah berkas dan menampilkan pesan "Batas waktu pengumpulan berakhir. Anda tidak dapat lagi mengunggah tugas". \\ \hline
Post-condition & Jika simpan: Berkas tugas tersimpan dan bisa dilihat asesor. \newline
Jika gagal: Tidak ada perubahan data pada server dan menampilkan pesan peringatan jika syarat waktu telah lewat. \\ \hline
\end{longtable}

#### Spesifikasi Usecase Lihat Sertifikat
Use case ini menjelaskan cara Asesi untuk melihat atau mengunduh sertifikat digital sebagai bukti resmi kompetensi setelah dinyatakan lulus dari seluruh rangkaian asesmen.

\begin{longtable}{|p{3.5cm}|>{\raggedright\arraybackslash}p{10.5cm}|}
\caption{Spesifikasi Use Case Lihat Sertifikat} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Tujuan & Memperoleh bukti kelulusan berupa sertifikat digital resmi yang telah diunggah oleh Admin. \\ \hline
Aktor & Asesi \\ \hline
Pre-condition & Asesi telah login, status finalnya adalah 'kompeten' \\ \hline
Main Flow & A. Asesi membuka menu sertifikasi. \newline
B. Asesi menekan detail pada sertifikasi yang ingin diambil sertifikatnya. \newline
C. Sistem tampilkan detail asesi beserta tombol 'lihat sertifikat'. \newline
D. Asesi menekan tombol 'lihat sertifikat'. \newline
E. Sistem membuka file sertifikat di tab baru atau langsung mengunduhnya. \\ \hline
Pragmatic Flow & Kondisi 1: Sertifikat belum diunggah oleh Admin. \newline
C1. Sistem menyembunyikan tombol unduh sertifikatnya. \\ \hline
Post-condition & Jika berhasil: Asesi berhasil menyimpan file sertifikatnya. \newline
Jika gagal: Asesi mendapatkan kepastian status mengenai ketersediaan berkas sertifikat digitalnya. \\ \hline
\end{longtable}

### Activity Diagram

Activity diagram berikut ini menggambarkan alur kerja (workflow) dari sistem yang dirancang, yang menjelaskan interaksi antara aktor dengan sistem berdasarkan proses bisnis yang ada pada Sistem Informasi LSP UNTAN.

#### Activity Diagram Melihat Dashboard

Diagram ini menggambarkan proses saat aktor membuka halaman dashboard dan sistem menampilkan halaman dashboard yang berisi ringkasan data statistik atau menu utama sesuai dengan hak akses masing-masing pengguna.

![Activity Diagram Melihat Dashboard](images/activity/admin/1.dashboard.png)

#### Activity Diagram Kelola Skema Sertifikasi

Diagram ini menjelaskan alur kerja admin dalam melakukan pengelolaan data skema, yang meliputi proses menambah, mengubah, melihat, serta menghapus data skema sertifikasi yang tersedia di LSP UNTAN.

![Activity Diagram Kelola Skema Sertifikasi](images/activity/admin/2.kelola-skema.png)

#### Activity Diagram Kelola Asesor

Alur ini menunjukkan bagaimana admin mengelola basis data asesor, mulai menambah, mengubah, melihat, dan menghapus asesor.

![Activity Diagram Kelola Asesor](images/activity/admin/3.kelola-asesor.png)

#### Activity Diagram Kelola Pengguna



#### Activity Diagram Melihat Log Aktivitas



#### Activity Diagram Kelola Sertifikasi

Activity diagram ini menggambarkan proses administratif dalam pengelolaan data sertifikasi meliputi menambah/membuka pendafataran, mengubah, melihat, dan menghapus.

![Activity Diagram Kelola Sertifikasi](images/activity/admin/4.kelola-sertifikasi.png)

#### Activity Diagram Kelola Pengumuman Sertifikasi

Diagram ini menjelaskan tahapan yang dilakukan admin/asesor untuk membuat dan mempublikasikan informasi atau berita terkait kegiatan sertifikasi tertentu agar dapat dilihat oleh asesi.

![Activity Diagram Kelola Pengumuman Sertifikasi](images/activity/admin/6.kelola-pengumuman.png)

#### Activity Diagram Kelola Asesmen

Alur ini menggambarkan pengelolaan instruksi asesmen meliputi menambah, mengubah, melihat, dan menghapus asesmen.

![Activity Diagram Kelola Asesmen](images/activity/admin/7.kelola-asesmen.png)

#### Activity Diagram Kelola Asesi

Diagram ini menunjukkan proses transisi status asesi (seperti: berkas sudah lengkap, diberikan hak akses ke menu asesmen, dinyatakan kompeten) berdasarkan hasil verifikasi dokumen atau hasil keputusan asesmen oleh admin atau asesor.

![Activity Diagram Kelola Asesi](images/activity/admin/8.%20kelola-asesi.png)

#### Activity Diagram Kelola Sertifikat Asesi

Menggambarkan proses pengunggahan salinan digital sertifikat kompetensi ke dalam sistem oleh admin agar dapat diakses atau diunduh oleh asesi yang telah dinyatakan kompeten.

![Activity Diagram Kelola Sertifikat Asesi](images/activity/admin/10.unggah-sertifikat.png)

#### Activity Diagram Mendaftar Sertifikasi

Alur ini menggambarkan tahapan yang dilakukan oleh calon asesi untuk memilih skema sertifikasi, mengisi formulir pendaftaran, hingga mengunggah dokumen persyaratan awal secara mandiri.

![Activity Diagram Mendaftar Sertifikasi](images/activity/asesi/12.mendaftar-sertifikasi.png)

#### Activity Diagram Lihat Detail dan Status Pendaftaran

Diagram ini menunjukkan bagaimana asesi melakukan pemantauan terhadap progres pendaftaran mereka, guna mengetahui apakah berkas telah diverifikasi atau memerlukan perbaikan.

![Activity Diagram Lihat Detail dan Status Pendaftaran](images/activity/asesi/13.lihat-status-pendaftaran.png)

#### Activity Diagram Akses Pengumuman Sertifikasi

Menjelaskan proses umum dalam mengakses dan membaca informasi terbaru yang dipublikasikan oleh pihak LSP UNTAN untuk sertifikasi yang diikuti.

![Activity Diagram Akses Pengumuman Sertifikasi](images/activity/asesi/15.lihat-pengumuman.png)

#### Activity Diagram Unggah Tugas Asesmen

Diagram ini menggambarkan alur asesi dalam mengumpulkan dokumen bukti kompetensi atau tugas-tugas asesmen yang diberikan oleh asesor sebagai bagian dari persyaratan uji kompetensi.

![Activity Diagram Unggah Tugas Asesmen](images/activity/asesi/16.unggah-tugas-asesmen.png)

#### Activity Diagram Lihat Sertifikat

Alur ini menunjukkan langkah-langkah yang dilakukan asesi untuk melihat pratinjau atau mengunduh sertifikat digital mereka setelah seluruh proses sertifikasi selesai dan dinyatakan kompeten.

![Activity Diagram Lihat Sertifikat](images/activity/asesi/17.lihat-sertifikat.png)

### Class Diagram

Class diagram berikut ini menggambarkan struktur sistem secara statis dengan memperlihatkan kelas-kelas yang ada, atribut, metode, serta hubungan antar objek dalam Sistem Informasi LSP UNTAN. Diagram ini berfungsi sebagai representasi dari struktur basis data dan logika perangkat lunak yang akan diimplementasikan.

<!-- ![Class Diagram](images/class-diagram.png) -->

### Entity Relationship Diagram
### Data Dictionary

Berikut adalah rincian struktur tabel yang digunakan dalam basis data Sistem Informasi Sertifikasi LSP UNTAN

#### Tabel Users

Tabel ini digunakan untuk menyimpan data akun otentikasi untuk semua aktor (Admin, Asesor, dan Asesi).

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Users} \\
\hline
Kolom & Tipe Data & Key & Keterangan \\ \hline
id & BIGINT (20) & Primary Key & ID Unik pengguna \\ \hline
name & VARCHAR (255) & - & Nama lengkap pengguna \\ \hline
email & VARCHAR (255) & - & Alamat email (unik) untuk login \\ \hline
password  & VARCHAR (255) & - & Kata sandi terenkripsi \\ \hline
role & VARCHAR (255) & - & Peran pengguna (admin, asesor, asesi) \\ \hline
banned\_at & TIMESTAMP & - & Waktu ketika Penggunadiban (tidak bisa login), null untuk default \\ \hline
email\_verified\_at & TIMESTAMP & - & Waktu ketika email pengguna terverifikasi \\ \hline
no\_tlp\_hp & VARCHAR (255) & - & No hp atau wa pengguna \\ \hline
fcm\_token & TEXT & - & Token firebase cloud messaging, terisi ketika user mengizinkan untuk memberikan notifikasi push \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Students

Tabel ini menyimpan profil biodata mahasiswa yang berelasi one to one ke tabel users.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Students} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT (20) & Primary Key & ID Unik asesi \\ \hline
user\_id & BIGINT (20) & Foreign Key & FK ke tabel users \\ \hline
nik & VARCHAR (255) & - & NIK  \\ \hline
nim & VARCHAR (255) & - & NIM asesi \\ \hline
tmpt\_lhr & VARCHAR (255) & - & Tempat lahir asesi \\ \hline
tgl\_lhr & DATE & - & Tanggal lahir asesi \\ \hline
kelamin & VARCHAR (255) & - & Jenis kelamin asesi \\ \hline
kebangsaan & VARCHAR (255) & - & Kebangsaan asesi \\ \hline
no\_tlp\_rmh & VARCHAR (255) & - & No telepon rumah asesi \\ \hline
no\_tlp\_kntr & VARCHAR (255) & - & No telepon kantor asesi \\ \hline
kualifikasi\_pendidikan & VARCHAR (255) & - & Kualifikasi pendidikan terakhir asesi \\ \hline
nama\_institusi & VARCHAR (255) & - & Institusi tempat asesi kerja atau mengeyam pendidikan \\ \hline
jabatan & VARCHAR (255) & - & Jabatan asesi di institusi tersebut \\ \hline
alamat\_kantor & VARCHAR (255) & - & Alamat kantor/institusi asesi \\ \hline
no\_tlp\_email\_fax & VARCHAR (255) & - & No telpon, email, atau faxkantor/institusi asesi \\ \hline
foto\_ktp & VARCHAR (255) & - & Lokasi file foto ktp asesi tersimpan \\ \hline
pas\_foto & VARCHAR (255) & - & Lokasi file pas foto asesi tersimpan \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Asesor

Tabel ini menyimpan profil asesor yang berelasi ke tabel users.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Asesor} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik asesor \\ \hline
user\_id & BIGINT(20) & Foreign Key & FK ke tabel users \\ \hline
no\_reg\_met & VARCHAR(255) & - & No registrasi asesor \\ \hline
masa\_berlaku\_sertif\_ \newline teknis & DATE & - & Masa berlaku sertifikat teknis si asesor \\ \hline
masa\_berlaku\_sertif\_ \newline asesor & DATE & - & Masa berlaku sertifikat asesor \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Skema

Tabel ini menyimpan data skema sertifikasi.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Skemas} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik skema \\ \hline
format\_apl\_1 & VARCHAR(255) & - & Lokasi file FR APL 1 \\ \hline
format\_apl\_2 & VARCHAR(255) & - & Lokasi file FR APL 2 \\ \hline
format\_asesmen & VARCHAR(255) & - & Lokasi file zip untuk lampiran asesmen \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Sertifikasi

Tabel ini menyimpan data sertifikasi yang berelasi ke tabel skema.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Sertifikasi} \label{tab:sertifikasi} \\
\hline
id & BIGINT(20) & Primary Key & ID unik sertifikasi \\ \hline
skema\_id & BIGINT(20) & Foreign Key & FK ke tabel skema \\ \hline
tuk & VARCHAR(255) & - & Tempat uji kompetensi \\ \hline
no\_rek & VARCHAR(255) & - & Nomor rekening untuk pembayaran sertifikasi \\ \hline
bank & VARCHAR(255) & - & Bank dari nomor rekening \\ \hline
atas\_nama\_rek & VARCHAR(255) & - & Atas nama dari nomor rekening \\ \hline
biaya & VARCHAR(255) & - & Biaya sertifikasi \\ \hline
tgl\_apply\_dibuka & DATE & - & Tanggal pendaftaran sertifikasi dibuka \\ \hline
tgl\_apply\_ditutup & DATETIME & - & Tanggal pendaftaran sertifikasi ditutup \\ \hline
tgl\_asesmen\_mulai & DATETIME & - & Tanggal asesmen dimulai \\ \hline
tgl\_asesmen\_selesai & DATE & - & Tanggal asesmen selesai \\ \hline
status & VARCHAR(255) & - & Status dari sertifikasi (berlangsung / selesai / dibatalkan) \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Pengumuman

Tabel ini menyimpan data pengumuman tiap sertifikasi yang berelasi ke tabel sertifikasi dan users.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel News} \label{tab:news} \\
\hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
\hline
\endlastfoot
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik pengumuman \\ \hline
sertification\_id & BIGINT(20) & Foreign Key & FK ke tabel sertifikasi \\ \hline
content & TEXT(65535) & - & Isi dari pengumuman \\ \hline
path\_file & VARCHAR(255) & - & lokasi file lampiran \\ \hline
user\_id & BIGINT(20) & Foreign Key & FK ke tabel users, menandakan siapa yang membuat pengumuman tersebut \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Asesmen

Tabel ini menyimpan data asesmen untuk suatu sertifikasi. Tabel ini berelasi ke tabel sertifikasi yaitu 1 to 1, artinya satu sertifikasi hanya punya satu asesmen.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Asesmen} \label{tab:asesmen} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik asesmen \\ \hline
sertification\_id & BIGINT(20) & Foreign Key & FK ke tabel sertifikasi \\ \hline
content & TEXT(65535) & - & Instruksi tertulis dari asesmen \\ \hline
path\_file & VARCHAR(255) & - & lokasi file lampiran \\ \hline
deadline & TIMESTAMP & - & Batas akhir pengumpulan asesmen \\ \hline
user\_id & BIGINT(20) & Foreign Key & FK ke tabel users, menandakan siapa yang membuat asesmen tersebut \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Asesi

Tabel ini menyimpan data asesi, yaitu mahasiswa yang mendaftar ke suatu sertifikasi. Tabel ini berelasi ke tabel sertifikasi, satu sertifikasi bisa diikuti oleh banyak asesi. Tabel ini juga berelasi ke tabel students, satu mahasiswa bisa menjadi lebih dari satu asesi.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Asesi} \label{tab:asesi} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik pendaftaran asesi \\ \hline
sertification\_id & BIGINT(20) & Foreign Key & FK ke tabel sertifikasi \\ \hline
student\_id & BIGINT(20) & Foreign Key & FK ke tabel students \\ \hline
tujuan\_sert & VARCHAR(225) & - & Tujuan asesi mengikuti sertifikasi \\ \hline
apl\_1 & VARCHAR(225) & - & Lokasi file APL 1 yang diinputkan asesi \\ \hline
apl\_2 & VARCHAR(225) & - & Lokasi file APL 2 yang diinputkan asesi \\ \hline
foto\_ktm & VARCHAR(225) & - & Lokasi file KTM yang diinputkan asesi \\ \hline
bukti\_bayar & VARCHAR(225) & - & Lokasi file bukti pembayaran yang diinputkan asesi \\ \hline
catatan\_perbaikan & VARCHAR(225) & - & Catatan perbaikan dari admin jika berkas kurang sesuai \\ \hline
status\_berkas & VARCHAR(225) & - & Status verifikasi berkas (Menunggu verifikasi admin) \\ \hline
status\_akses\_asesmen & VARCHAR(225) & - & Status izin akses ke menu asesmen \\ \hline
status\_final & VARCHAR(225) & - & Status kelulusan akhir (Kompeten / Belum Kompeten) \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

Tabel asesifiles menyimpan data berkas-berkas tambahan yang dilampirkan asesi ketika mendaftar sertifikasi, tabel ini dibuat terpisah dari tabel asesi agar tiap kemunculan datanya atomik. Tabel ini berelasi ke tabel asesi yaitu M to 1, artinya 1 asesi bisa punya lebih dari asesifiles.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Asesifiles} \label{tab:asesifiles} \\
\hline
Kolom & Tipe Data & Key & Deskripsi \\ \hline
id & BIGINT(20) & Primary Key & ID unik tiap record \\ \hline
asesi\_id & BIGINT(20) & Foreign Key & FK ke tabel asesi \\ \hline
path\_file & VARCHAR(255) & - & Lokasi penyimpanan file di server \\ \hline
type & VARCHAR(225) & - & Tipe file (sertifikat\_pelatihan, dokumen\_pendukung\_lainnya, dsb.) \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Sertifikat

Tabel ini menyimpan data sertifikat seorang asesi. Tabel ini berelasi ke tabel asesi yaitu 1 to 1. Artinya 1 asesi bisa punya 1 sertifikat.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Sertifikats} \label{tab:sertifikats} \\
\hline
id & BIGINT(20) & Primary Key & ID unik tiap record \\ \hline
asesi\_id & BIGINT(20) & Foreign Key & FK ke tabel asesi \\ \hline
file\_path & VARCHAR(255) & - & Lokasi file sertifikat yang tersimpan \\ \hline
nomor\_seri & VARCHAR(255) & - & Nomor seri sertifikat \\ \hline
nomor\_sertifikat & VARCHAR(255) & - & Nomor sertifikat \\ \hline
nomor\_registrasi & VARCHAR(255) & - & Nomor registrasi sertifikat \\ \hline
tanggal\_terbit & DATE & - & Tanggal terbit sertifikat \\ \hline
berlaku\_hingga & DATE & - & Tanggal kadaluarsa sertifikat \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
updated\_at & TIMESTAMP & - & Waktu pembaruan data terakhir \\ \hline
\end{longtable}

#### Tabel Activity Log

Tabel ini menyimpan data rekam jejak aktivitas sistem. Kolom causer_id dan subject_id menyimpan id aktor dan id objek yang dimodifikasi tanpa terikat pada satu tabel spesifik. Hal ini agar semua rekam jejak bisa disimpan di satu tabel ini saja.

\begin{longtable}{|p{3cm}|p{3cm}|p{2.5cm}|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Tabel Activity Log} \label{tab:activity_log} \\
\hline
id & BIGINT(20) & Primary Key & ID unik tiap record \\ \hline
log\_name & VARCHAR(255) & - & Kategori atau nama grup log \\ \hline
description & TEXT(65535) & - & Deskripsi aktivitas yang dilakukan \\ \hline
subject\_id & BIGINT(20) & - & ID dari objek yang dimodifikasi \\ \hline
subject\_type & VARCHAR(255) & - & Nama model/tabel objek yang dimodifikasi \\ \hline
event & VARCHAR(255) & - & Jenis kejadian (created, updated, deleted) \\ \hline
causer\_id & BIGINT(20) & - & ID pengguna yang melakukan aksi \\ \hline
causer\_type & VARCHAR(255) & - & Nama model pengguna (User) \\ \hline
properties & JSON & - & Detail data sebelum dan sesudah perubahan \\ \hline
batch\_uuid & UUID & - & ID unik pengelompokkan aktivitas dalam satu transaksi \\ \hline
created\_at & TIMESTAMP & - & Waktu pembuatan data \\ \hline
\end{longtable}

## Perancangan Skema Pengujian 

Bagian ini menjelaskan rencana pengujian yang akan dilakukan terhadap Sistem Informasi LSP UNTAN guna memastikan kualitas dan fungsionalitas perangkat lunak sesuai dengan persyaratan yang telah ditetapkan.

### Metode dan Teknik Pengujian

Metode pengujian yang dipilih adalah Black Box Testing dengan merujuk pada standar Roger S. Pressman. Pengujian ini berfokus pada fungsionalitas sistem tanpa melibatkan struktur kode internal. Adapun teknik yang akan digunakan adalah Equivalence Partitioning. Teknik ini digunakan dengan membagi domain input sistem ke dalam beberapa kelas data (valid dan tidak valid) untuk mengurangi jumlah kasus uji yang diperlukan namun tetap menjamin cakupan fungsionalitas.

### Struktur Kasus Uji

Setiap pengujian akan didokumentasikan ke dalam sebuah tabel kasus uji dengan format sebagai berikut.

\begin{longtable}{|p{4.5cm}|p{9.5cm}|}
\caption{Definisi Komponen Skema Pengujian} \label{tab:def_pengujian} \\
\hline
Komponen Kolom & Penjelasan Isi \\ \hline
ID Test & Kode unik untuk mengidentifikasi setiap kasus uji (contoh: TC-01, artinya \textit{test case} 01). \\ \hline
Skenario Pengujian & Langkah-langkah atau urutan tindakan yang dilakukan oleh penguji pada sistem. \\ \hline
Input & Data atau aksi yang dimasukkan oleh pengguna (seperti teks, file, atau klik tombol) untuk menjalankan fungsi. \\ \hline
Output yang Diharapkan & Respon atau keluaran sistem yang dianggap benar secara fungsional terhadap input yang diberikan. \\ \hline
Status & Hasil akhir pengujian untuk menentukan apakah fungsi berjalan sesuai harapan (Berhasil/Gagal). \\ \hline
\end{longtable}

\newpage

# BAB IV HASIL DAN PEMBAHASAN

\FrameImagestrue

## Tampilan Halaman

Berikut merupakan hasil implementasi tampilan halaman dari Sistem Informasi LSP UNTAN. Penjelasan di bawah ini mencakup visualisasi antarmuka pengguna beserta deskripsi fungsionalitas dari setiap komponen yang tersedia pada sistem, baik dari sisi mahasiswa maupun dari sisi admin dan asesor.

### Halaman Register

Halaman Register merupakan antarmuka yang dirancang untuk memfasilitasi calon asesi dalam melakukan pendaftaran akun baru pada Sistem Informasi LSP UNTAN. Seperti yang terlihat pada Gambar \ref{fig:hal-register}, halaman ini memuat formulir input yang terdiri dari emaildan kata sandi. Terdapat validasi sisi klien untuk memastikan data yang dimasukkan sesuai dengan format yang ditentukan. Setelah pengguna menekan tombol 'Daftar', sistem akan memproses data tersebut ke basis data dan memberikan notifikasi keberhasilan sebelum diarahkan ke halaman login.

![Halaman Register \label{fig:hal-register}](images/hasil/1.%20register.jpeg)

### Halaman Login

Halaman Login berfungsi sebagai sistem autentikasi utama untuk menjamin keamanan akses data. Antarmuka ini mencakup input field untuk email dan kata sandi (Gambar \ref{fig:hal-login}). Sistem ini dilengkapi dengan logika multi-user role, di mana setelah proses verifikasi kredensial berhasil, sistem secara otomatis akan mengidentifikasi level akses pengguna, apakah sebagai Admin, Asesor, atau Mahasiswa (Asesi) dan mengarahkan pengguna ke dashboard yang sesuai dengan hak aksesnya masing-masing.

![Halaman Login \label{fig:hal-login}](images/hasil/2.%20login.jpeg)

### Halaman Dashboard Asesi

Halaman Dashboard Asesi adalah tampilan utama yang pertama kali dilihat oleh mahasiswa setelah proses login berhasil. Penjelasan visual pada Gambar \ref{fig:hal-dash-asesi} menunjukkan adanya panel ringkasan yang menampilkan status pendaftaran sertifikasi terakhir, kartu informasi (info cards) mengenai jumlah sertifikasi yang diikuti. Halaman ini dirancang untuk memberikan user experience yang memudahkan asesi memantau perkembangan proses asesmen mereka tanpa harus membuka banyak menu.

![Halaman Dashboard Asesi \label{fig:hal-dash-asesi}](images/hasil/3.%20dashboard-asesi.jpeg)

### Halaman Daftar Sertifikasi Asesi

Halaman ini menyajikan katalog skema sertifikasi yang tersedia dan sedang dibuka oleh LSP UNTAN. Implementasi halaman ini (Gambar \ref{fig:hal-daftar-sertifikasi-asesi}) menggunakan komponen card atau tabel yang memuat nama skema, biaya pendaftaran, dan periode pelaksanaan. Setiap item skema dilengkapi dengan tombol 'Daftar' untuk menuju ke halaman apply untuk mengisi data-data yang diperlukan.

![Halaman Daftar Sertifikasi Asesi \label{fig:hal-daftar-sertifikasi-asesi}](images/hasil/4.%20daftar-sertifikasi-asesi.jpeg)

### Halaman Apply Sertifikasi

Halaman Apply Sertifikasi merupakan langkah krusial di mana asesi melakukan pendaftaran pada skema tertentu secara resmi. Seperti diperlihatkan pada Gambar 4.5, halaman ini menampilkan formulir pengunggahan dokumen persyaratan (seperti KTP, KTM, atau Transkrip Nilai) sesuai standar BNSP. Sistem menyediakan fungsi file picker dengan batasan ukuran dan format dokumen tertentu. Terdapat tombol 'Submit' untuk mengirimkan berkas pendaftaran ke pihak admin.

### Halaman Pengumuman Asesi

Halaman Pengumuman menampilkan daftar pengumuman yang dibuat oleh admin atau asesor.

### Halaman Asesmen Asesi

Halaman Asesmen Asesi dirancang khusus untuk mendukung proses uji kompetensi secara digital. Antarmuka yang ditampilkan pada Gambar 4.6 mencakup instruksi kerja dari asesor, daftar tugas yang harus dikerjakan, dan kolom unggah bukti kompetensi. Halaman ini memiliki logika kondisi (state) di mana halaman ini hanya bisa diakses jika admin sudah memberikan hak akses ke asesi yang bersangkutan. Hal ini bertujuan untuk memastikan alur kerja asesmen berjalan sesuai dengan regulasi yang ditetapkan LSP.

### Halaman Profil Asesi

Halaman Profil berfungsi sebagai pusat pengelolaan data diri asesi secara mandiri. Berdasarkan tampilan pada Gambar 4.7, asesi dapat memperbarui data kontak, foto profil, dan melihat riwayat sertifikasi yang pernah diikuti. Selain itu, terdapat fitur untuk melakukan perubahan kata sandi guna menjaga keamanan akun. Sinkronisasi data pada halaman ini terhubung langsung dengan halaman apply, sehingga nanti jika mahasiswa mendaftar sertifikasi lain, tidak mengisi semua data dari awal lagi.

### Halaman Dashboard Admin

Halaman Dashboard Admin merupakan pusat kendali manajemen yang menyajikan data statistik secara visual dan komprehensif. Pada Gambar 4.8, terlihat penggunaan komponen chart dan widget yang menampilkan jumlah total asesi, persentase kelulusan, jumlah skema aktif, serta grafik tren pendaftaran. Dashboard ini memberikan insight cepat kepada pengelola LSP UNTAN untuk mengambil keputusan strategis berdasarkan data yang masuk secara real-time dari seluruh aktivitas sistem.

###  Halaman Skema Admin

Halaman Skema Admin digunakan untuk melakukan konfigurasi data master terkait standar kompetensi. Antarmuka yang ditampilkan pada Gambar 4.9 menyediakan tabel data skema yang dilengkapi dengan fitur Create, Read, Update, dan Delete (CRUD). Admin dapat menentukan judul skema, format file APL 1 dan APL 2 di dalamnya. Halaman ini merupakan pondasi utama sistem karena data skema di sini akan menjadi referensi bagi seluruh proses pendaftaran dan sertifikasi.

###  Halaman Asesor Admin

Halaman ini diperuntukkan bagi manajemen pendaftaran dan penugasan asesor pada LSP UNTAN. Seperti terlihat pada Gambar 4.10, admin dapat menambah akun asesor baru, serta memantau status keaktifan mereka. Fitur pencarian dan filter diimplementasikan untuk memudahkan pengelolaan apabila jumlah asesor sudah mencapai puluhan atau ratusan orang, guna menjaga efektivitas distribusi tugas asesmen.

###  Halaman Kelola Sertifikasi

Halaman Memulai Sertifikasi (Kelola Event) adalah modul untuk mengaktifkan periode pendaftaran sertifikasi tertentu. Pada Gambar 4.11, admin dapat menentukan parameter kegiatan seperti nama event, tanggal mulai dan berakhir, besaran biaya, serta menetapkan asesor mana yang akan bertugas pada event tersebut. Halaman ini secara otomatis akan memicu pembaruan status pada sisi asesi sehingga skema terkait dapat muncul pada halaman daftar sertifikasi asesi.

###  Halaman Kelola Pengumuman


###  Halaman Asesmen Admin & Asesor

Halaman ini merupakan antarmuka kerja bagi pihak penguji untuk melakukan penilaian terhadap bukti-bukti kompetensi yang dikirimkan asesi. Melalui tampilan pada Gambar 4.12, asesor dapat melihat berkas tugas yang dikumpulkan oleh asesi.

###  Halaman Kelola Asesi

Halaman Daftar Peserta Asesi menyajikan daftar seluruh asesi yang terlibat dalam sebuah event sertifikasi secara terperinci. Seperti ditunjukkan pada Gambar 4.13, tabel pada halaman ini memuat informasi nama, NIM, skema yang diambil, serta status pembayaran dan verifikasi berkas. Admin dapat menggunakan halaman ini untuk mengekspor data ke dalam format Excel atau PDF, serta melakukan verifikasi pemberkasan secara massal guna mempercepat proses administrasi pendaftaran.

###  Halaman Catatan Aktivitas Sistem

###  Halaman Daftar Pengguna

## Testing
### Hasil Pengujian Asesi

\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Asesi} \label{tab:pengujian-asesi} \\
\hline
ID Tes & Skenario Pengujian & Input & Output yang diharapkan & Status \\ \hline
TC-01 & Pendaftaran Akun Mahasiswa (Asesi) & Memasukkan email valid dan kata sandi, lalu menekan tombol 'Daftar' & Data tersimpan ke database dan diarahkan ke halaman login & Sesuai \\ \hline
TC-02 & Validasi Format Email Pendaftaran & Memasukkan email tanpa format '@' atau mengosongkan field & Sistem menampilkan pesan peringatan validasi & Sesuai \\ \hline
TC-03 & Autentikasi Login Pengguna & Memasukkan email dan kata sandi yang telah terdaftar & Masuk ke dashboard sesuai hak akses (Admin/Asesor/Asesi) & Sesuai \\ \hline
TC-04 & Menampilkan Ringkasan Data Dashboard Asesi & Mengakses halaman dashboard setelah proses login berhasil & Menampilkan status pendaftaran dan kartu informasi sertifikasi & Sesuai \\ \hline
TC-05 & Pemilihan Skema Sertifikasi pada Katalog yang tersedia & Menekan tombol 'Daftar' pada salah satu kartu skema & Sistem mengarahkan ke halaman form pengajuan & Sesuai \\ \hline
TC-06 & Pengunggahan Dokumen Persyaratan Sertifikasi & Menginput data diri lengkap dan mengunggah seluruh dokumen persyaratan (PDF), lalu menekan tombol 'Submit' & Sistem menyimpan data, lalu diarahkan ke halaman rincian asesi. Halaman menampilkan data yang diinput dengan status. \newline
1. Berkas: Menunggu Verifikasi \newline
2. Hak Akses Asesmen: Belum Diberikan \newline
3. Status Final: Belum Ditentukan & Sesuai \\ \hline
TC-07 & Mengakses Skema Sertifikasi yang sudah didaftar pada Katalog Tersedia & Menekan tombol ‘Detail’ pada kartu skema yang sudah didaftar sebelumnya & Sistem mengarahkan ke halaman rincian asesi. & Sesuai \\ \hline
TC-08 & Pemutakhiran Data Profil Asesi & Mengubah data kontak pada profil dan menekan tombol 'Simpan' & Data profil diperbarui dan sinkron dengan form pendaftaran & Sesuai \\ \hline
TC-09 & Mengakses Halaman Pengumuman & Menekan menu atau tombol 'Pengumuman' pada rincian asesi. & Sistem menampilkan daftar seluruh pengumuman yang dibuat oleh Admin atau Asesor secara lengkap & Sesuai \\ \hline
TC-10 & Menampilkan Detail Isi Pengumuman & Menekan tombol 'Lihat' pada salah satu judul pengumuman & State halaman berubah menampilkan detail isi pengumuman dan menyembunyikan daftar pengumuman lainnya & Sesuai \\ \hline
TC-11 & Kembali ke Daftar Pengumuman & Menekan tombol 'Kembali' pada tampilan detail & State halaman kembali menampilkan seluruh daftar pengumuman asesi & Sesuai \\ \hline
TC-12 & Validasi Hak Akses Menu Asesmen (Terkunci) & Mengakses menu asesmen saat status hak akses masih "Belum Diberikan" & Sistem menampilkan ikon gembok di samping menu, menu tidak dapat ditekan, dan asesi tidak bisa masuk ke halaman asesmen & Sesuai \\ \hline
TC-13 & Akses Halaman Asesmen Tanpa Instruksi Asesmen & Mengakses menu asesmen saat hak akses sudah diberikan namun Instruksi belum dibuat oleh Asesor & Halaman terbuka namun menampilkan pesan: “Asesor belum membuat instruksi asesmen” & Sesuai \\ \hline
TC-14 & Akses Halaman Asesmen dengan Instruksi Lengkap & Mengakses menu asesmen saat hak akses sudah diberikan dan Instruksi sudah tersedia & Halaman menampilkan detail instruksi kerja dan memunculkan seluruh form unggah berkas (FR.IA.01, IA.02, IA.06, AK.01, dsb.) & Sesuai \\ \hline

\end{longtable}

### Hasil Pengujian Admin dan Asesor

\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Admin dan Asesor} \label{tab:pengujian-admin-asesor} \\
\hline
ID Test & Skenario Pengujian & Input & Output yang Diharapkan & Status \\ \hline
TC-15 & Manajemen Status Berkas dan Hak Akses Asesi (Bulk Action) & Memilih beberapa asesi pada daftar, kemudian: \newline
1. Mengubah berkas menjadi Berkas Lengkap. \newline
2. Mengubah hak akses menjadi Diberikan. & Status berkas dan hak akses asesmen pada seluruh asesi yang dipilih berubah sesuai input. & Sesuai \\ \hline
TC-16 & Penetapan Hasil Akhir Asesmen (Bulk Action) & Memilih asesi yang telah selesai ujian, lalu mengubah status akhir menjadi „Kompeten“ atau „Belum Kompeten“. & Status final asesi diperbarui di database. & Sesuai \\ \hline
TC-17 & Validasi Dokumen APL (Tanda Tangan Asesor) & Pada halaman detail asesi: Mengunduh file APL-01 dan APL-02 yang sudah disubmit asesi, kemudian Mengunggah kedua file yang telah ditandatangani asesor untuk menggantikan file yang sudah diunggah asesi. & File APL versi asesi tergantikan oleh file baru dari asesor sehingga file tersebut kini punya tanda tangan asesi dan asesor. & Sesuai \\ \hline
TC-18 & Validasi Logika Tombol Upload Sertifikat & Mengakses detail asesi dengan status akhir "Belum Kompeten" atau "Belum Ditentukan" & Tombol Upload Sertifikat tidak muncul (disembunyikan) pada antarmuka halaman & Sesuai \\ \hline
TC-19 & Penerbitan Sertifikat Kompetensi & Mengakses Asesi berstatus "Kompeten". Menekan tombol upload, mengisi nomor registrasi, masa berlaku, upload file sertifikat dsb. State berubah menampilkan form upload. & Data sertifikat tersimpan dan asesi dapat mengunduh sertifikat tersebut di dashboard mereka. & Sesuai \\ \hline
TC-20 & Pengelolaan Instruksi Asesmen & Menekan tombol 'Buat Instruksi', mengisi detail tugas, dan menyimpan (termasuk Edit/Hapus) & Data instruksi berhasil disimpan/diperbarui di database dan langsung muncul pada tampilan halaman asesmen & Sesuai \\ \hline
TC-21 & Pemeriksaan Dokumen Unggahan Asesi pada Menu Asesmen & Mengakses data asesi di halaman asesmen, lalu menekan link/file dokumen yang telah diunggah & Sistem menampilkan atau browser mengunduh dokumen yang diunggah asesi pada menu asesmen. & Sesuai \\ \hline

\end{longtable}

### Hasil Pengujian Admin

\begin{longtable}{|p{1cm}|p{3cm}|p{3.5cm}|p{4.5cm}|>{\raggedright\arraybackslash}p{1cm}|}
\caption{Tabel Hasil Pengujian Admin} \label{tab:pengujian-admin} \\
\hline
ID Test & Skenario Pengujian & Input & Output yang diharapkan & Status \\ \hline
TC-22 & Visualisasi Statistik Data pada Dashboard Admin & Mengakses halaman dashboard admin & Menampilkan grafik dan widget data (K/BK) & Sesuai \\ \hline
TC-23 & Pengelolaan Data Master Skema Sertifikasi & Menambah, mengubah, atau menghapus data skema & Perubahan data skema berhasil tersimpan ke basis data & Sesuai \\ \hline
TC-24 & Pengelolaan Data Master Asesor & Menambah, mengubah, atau menghapus data pada asesor & Perubahan data asesor berhasil tersimpan ke basis data & Sesuai \\ \hline
TC-25 & Pengelolaan Data Jadwal Sertifikasi & Memasukkan skema, jadwal, biaya, penugasan asesor dsb. Juga mengedit data tersebut. & Perubahan data sertifikasi berhasil tersimpan ke basis data. Event Sertifikasi yang dimulai muncul secara di halaman daftar sertifikasi di sisi asesi & Sesuai \\ \hline
TC-26 & Akses Halaman Log Aktivitas Sistem & Mengakses menu Log & Sistem menampilkan daftar log aktivitas sistem & Sesuai \\ \hline
TC-27 & Pemantauan Log Aktivitas Sistem & Menekan tombol 'Detail' pada salah satu baris log di menu log & Sistem menampilkan riwayat aktivitas (siapa melakukan apa) serta detail perubahan data (old value vs new value) secara rinci & Sesuai \\ \hline
TC-28 & Akses Halaman Daftar Pengguna & Mengakses menu kelola pengguna & Sistem menampilkan daftar pengguna yang terdaftar di sistem & Sesuai \\ \hline
TC-29 & Manajemen Blokir Pengguna (Ban User) & Pada menu 'Kelola User', menekan tombol 'Ban' pada pengguna yang berstatus aktif & Status pengguna berubah menjadi "Banned". Pengguna tersebut tidak bisa melakukan login ke dalam sistem. & Sesuai \\ \hline
TC-30 & Pemulihan Akses Pengguna (Un-ban User) & Menekan tombol 'Un-ban' pada pengguna yang berstatus blokir & Status pengguna kembali menjadi "Aktif". Pengguna tersebut kini bisa login kembali ke dalam sistem. & Sesuai \\ \hline
\end{longtable}

\newpage

\FrameImagesfalse

# PENUTUP

## Kesimpulan

Berdasarkan dari hasil dan perancangan serta pengujian aplikasi yang telah dilakukan oleh peneliti, maka dapat ditarik kesimpulan bahwa penelitian ini sebagai berikut.

1. Penelitian ini menghasilkan aplikasi pendaftaran sertifikasi LSP UNTAN berbasis web. Sistem ini mampu mengotomatisasi alur kerja pendaftaran, verifikasi berkas, hingga penerbitan sertifikat, sehingga meningkatkan efisiensi kerja admin dan asesor serta mempermudah aksesibilitas bagi asesi (mahasiswa).
2. Implementasi teknologi *Progressive Web App* (PWA) pada sistem ini memberikan pengalaman pengguna yang lebih responsif dan menyerupai aplikasi native. Fitur Add to Home Screen memudahkan akses cepat tanpa melalui browser, sementara fitur *Push Notification* melalui Firebase Cloud Messaging (FCM) berhasil menjamin penyampaian informasi status pendaftaran dan pengumuman secara real-time kepada pengguna.
3. Penelitian ini menggunakan pengujian Black Box Testing. Hasil pengujian Black Box Testing pada aplikasi menandakan bahwa semua fungsi yang telah dibangun sudah berjalan dengan baik dan sesuai seperti yang diharapkan.

## Saran

1. Sistem disarankan untuk mengembangkan modul formulir dinamis yang menggantikan proses pengisian manual pada berkas .docx. Dengan modul ini, asesi cukup memasukkan data satu kali melalui antarmuka web, dan sistem akan secara otomatis memetakan (mapping) data tersebut ke dalam template dokumen sertifikasi (seperti APL-01, APL-02, dan 17 dokumen lainnya) menggunakan pustaka pengolah dokumen seperti PHPWord. Hal ini akan meningkatkan efisiensi waktu, meminimalisir kesalahan input data, serta menjamin konsistensi format dokumen di seluruh tahapan asesmen.
2. Penerapan fitur Background Sync API pada PWA disarankan agar asesi tetap dapat mengisi formulir pendaftaran atau tugas asesmen dalam kondisi offline, dan sistem secara otomatis akan melakukan sinkronisasi data saat koneksi internet kembali tersedia.
3. Integrasi dengan API Universitas Tanjungpura disarankan agar asesi (mahasiswa) dapat melakukan pendaftaran menggunakan akun universitas yang sudah ada, guna meningkatkan keamanan dan validitas data pengguna.


\newpage

# DAFTAR PUSTAKA