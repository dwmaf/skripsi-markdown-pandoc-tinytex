\thispagestyle{empty}
\begin{center}
\begin{spacing}{1}
\vspace*{50pt}
\fontsize{14pt}{17pt}\selectfont
\textbf{PENGEMBANGAN SISTEM INFORMASI LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN \textit{PROGRESSIVE WEB APP}}

\vspace{20pt}
\textbf{SKRIPSI}

\normalsize
\vspace{20pt}
Program Studi Informatika\\
Jurusan Informatika

\vspace{40pt}
\fontsize{14pt}{17pt}\selectfont
Oleh:\\
\textbf{\underline{DAWAM AGUNG FATHONI}}\\
NIM D1041211005

\vspace{40pt}
\includegraphics[width=5cm]{images/logo-untan.png}
\vspace{50pt}

FAKULTAS TEKNIK\\
UNIVERSITAS TANJUNGPURA\\
PONTIANAK\\
2026
\normalsize
\end{spacing}
\end{center}
\newpage

\pagenumbering{roman}
\setcounter{page}{2}

# HALAMAN PERNYATAAN {-}

Yang bertanda tangan di bawah ini:
\vspace{-1.7em}
\begin{flushleft}
\begin{tabular}{@{}l@{\hspace{1.5cm}}l}
Nama & : Dawam Agung Fathoni \\
NIM  & : D1041211005
\end{tabular}
\end{flushleft}
\vspace{-1.5em}

\noindent menyatakan bahwa dalam skripsi yang berjudul “PENGEMBANGAN SISTEM INFORMASI LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN *PROGRESSIVE WEB APP*” tidak terdapat karya yang pernah diajukan untuk memperoleh gelar sarjana di suatu perguruan tinggi manapun. Sepanjang pengetahuan Saya, tidak terdapat karya atau pendapat yang pernah ditulis atau diterbitkan oleh orang lain, kecuali yang secara tertulis diacu dalam naskah ini dan disebutkan dalam Daftar Pustaka.


Demikian pernyataan ini dibuat dengan sebenar-benarnya. Saya sanggup menerima konsekuensi akademis dan hukum di kemudian hari apabila pernyataan yang dibuat ini tidak benar.

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, Maret 2026 \\
Penulis, \\
\\
\\
Dawam Agung Fathoni \\
NIM D1041211005
\end{tabular}
\end{spacing}
\end{flushright}

\newpage

\phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}

\vspace*{-3cm}
\noindent\makebox[\textwidth][l]{\hspace*{-2cm}\begin{minipage}{17cm}
\begin{minipage}[t]{2.7cm}
\vspace{0pt}
\includegraphics[width=2.7cm]{images/logo-untan-grayscale.png}
\end{minipage}\begin{minipage}[t]{14.5cm}
\vspace{0pt}
\centering
\begin{spacing}{1}
{\fontsize{14pt}{15pt}\selectfont KEMENTERIAN RISET, TEKNOLOGI DAN PENDIDIKAN TINGGI\\}
{\fontsize{18pt}{19pt}\selectfont \textbf{UNIVERSITAS TANJUNGPURA}\\}
{\fontspec{Rockwell}\fontsize{24pt}{25pt}\selectfont \textbf{FAKULTAS TEKNIK}\\}
{\fontsize{12pt}{13pt}\selectfont Jl. Prof. Dr. H. Hadari Nawawi Pontianak 78124 Telp./Fax. 0561 740186}
\end{spacing}
\end{minipage}
\vspace{-7pt}
\hrule height 2.5pt
\end{minipage}}

\begin{center}
\begin{spacing}{1}
\vspace*{20pt}
PENGEMBANGAN SISTEM INFORMASI LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN \textit{PROGRESSIVE WEB APP}

\vspace{1em}
Program Studi Sarjana Informatika\\
Jurusan Informatika

\vspace{1em}
Oleh:

Dawam Agung Fathoni\\
NIM D1041211005

Telah dipertahankan di depan Penguji Skripsi pada tanggal ... ... 2026
dan diterima sebagai salah satu persyaratan untuk memperoleh gelar sarjana.

\vspace{1em}
Susunan Penguji Skripsi:

\begin{tabular*}{\textwidth}{@{}l@{\extracolsep{\fill}}l@{}}
Ketua,              & Penguji Utama, \\[3.5em]
Morteza Muthahhari, S.Kom., M.T.I.        & Enda Esyudha Pratama, S.T., M.T. \\
NIP. 198607092019031008            & NIP. 198810182019031006 \\[2em]
Sekretaris,         & Penguji Pendamping, \\[3.5em]
Bomo Wibowo Sanjaya, S.T., M.T.   & Rifqi Anugrah, S.Kom., M.Kom. \\
NIP. 197404011999031003            & NIP. 199803122024061001
\end{tabular*}

\vspace{1em}
\begin{tabular}{@{}l@{}}
Pontianak, Maret 2026 \\
Dekan, \\[3.5em]
Dr. -Ing Ir. Slamet Widodo, M.T., IPM. \\
NIP 196712231992031002
\end{tabular}

\end{spacing}
\end{center}

\newpage

\phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PERSEMBAHAN}

\vspace*{\fill}
\begin{center}
Puji syukur kehadirat Allah SWT atas segala rahmat dan kemudahan-Nya, sehingga perjalanan panjang yang penuh dengan baris kode, error log, dan ribuan cangkir kopi ini akhirnya sampai di titik akhir. Dengan penuh rasa syukur, karya sederhana ini saya persembahkan untuk:

Kedua orang tua tercinta, ayahanda dan ibunda, Terima kasih telah menjadi server utama yang tak pernah down dalam memberikan doa, kasih sayang, dan dukungan finansial. Tanpa restu dan sabar kalian, baris pertama kodingan ini tidak akan pernah tertulis. Skripsi ini adalah kado kecil untuk segala peluh yang kalian tumpahkan demi melihat saya memakai toga. Semoga ini bisa menjadi awal untuk membahagiakan kalian lebih jauh lagi.

Dosen pembimbing dan penguji, terima kasih telah sabar membimbing saya yang terkadang masih logic error ini. Terima kasih telah memberikan arahan hingga aplikasi LSP ini tidak hanya menjadi sekadar tugas akhir, tapi sebuah karya yang layak diuji.

Teman-teman seperjuangan (angkatan 2021), khususnya kawan-kawan yang sudah sering berbagi error handling, tempat curhat saat deadline mencekik, dan teman nongkrong di sela-sela pengerjaan bab 4 yang tak berujung. Kalian adalah user interface paling nyaman dalam perjalanan kuliah saya. Kita mulai bersama, dan kita harus sukses bersama.

Untuk diriku sendiri, terima kasih karena tidak menekan tombol shutdown di saat keadaan terasa sangat berat. Terima kasih sudah tetap keep running meskipun memori otak hampir penuh dan semangat hampir timeout. Kamu hebat sudah sampai di sini.

Almamater tercinta, Universitas Tanjungpura, tempat saya tumbuh dan belajar arti sesungguhnya dari sebuah perjuangan intelektual.

Semoga skripsi ini bermanfaat, dan semoga setiap baris kode di dalamnya menjadi amal jariyah bagi kita semua.
\end{center}
\vspace*{\fill}
\newpage

# KATA PENGANTAR {-}
\setlength{\parindent}{1.27cm}
Puji syukur kehadirat Allah SWT karena atas pertolongan-Nya, penulis dapat menyelesaikan penulisan tugas akhir penelitian yang berjudul “Pengembangan Sistem Informasi Lembaga Sertifikasi Profesi (LSP) UNTAN Menggunakan *Progressive Web App*”. Penulis menyadari dalam penulisan tugas akhir penelitian ini tidak terlepas dari bantuan berbagai pihak. Untuk itu pada kesempatan ini, penulis menyampaikan terima kasih kepada Bapak Dr. Yus Sholva, S.T., M.T. selaku Ketua Jurusan Informatika Fakultas Teknik Universitas Tanjungpura, Bapak Morteza Muthahhari, S.Kom., M.T.I. selaku Dosen Pembimbing I, Bapak Bomo Wibowo Sanjaya selaku Dosen Pembimbing II, Bapak Enda Esyudha Pratama, S.T., M.T. selaku Dosen Penguji I dan Bapak Rifqi Anugrah, S.Kom., M.Kom. selaku Dosen Penguji II dalam penelitian ini. Penulis berharap semoga tugas akhir penelitian ini bermanfaat bagi semua pihak dan bila terdapat kekurangan penulis mengharapkan saran dan kritik yang membangun dari semua pihak untuk menyempurnakan tugas akhir penelitian ini.

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, Maret 2026 \\
Penulis, \\
\\
\\
Dawam Agung Fathoni
\end{tabular}
\end{spacing}
\end{flushright}
\newpage

# ABSTRAK {-}

\begin{spacing}{1}
\setlength{\parskip}{0pt}
\fontsize{10pt}{12pt}\selectfont
\vspace{10pt}
Lembaga Sertifikasi Profesi (LSP) Universitas Tanjungpura (UNTAN) didirikan untuk menyelenggarakan proses sertifikasi guna meningkatkan daya saing mahasiswa di dunia kerja. Pada pelaksanaannya, proses pendaftaran sertifikasi masih belum terintegrasi secara terpusat, mengandalkan pengisian formulir pihak ketiga, serta melibatkan pengelolaan dokumen fisik yang rentan terhadap risiko kehilangan dan inefisiensi waktu. Penelitian ini bertujuan untuk merancang dan membangun Sistem Informasi LSP UNTAN yang dapat memfasilitasi keseluruhan proses pendaftaran, verifikasi berkas, asesmen, hingga penerbitan sertifikat digital secara daring. Sistem ini dikembangkan menggunakan pendekatan \textit{System Development Life Cycle} (SDLC) dengan model \textit{Waterfall}, menggunakan kerangka kerja Laravel sebagai antarmuka belakang (\textit{backend}) dan Vue.js yang diintegrasikan melalui Inertia.js sebagai antarmuka depan (\textit{frontend}). Penelitian ini turut mengimplementasikan teknologi \textit{Progressive Web App} (PWA) agar aplikasi web mampu memberikan pengalaman menyerupai aplikasi \textit{native}, dengan memanfaatkan fitur \textit{Add to Home Screen} dan \textit{Push Notification} melalui \textit{Firebase Cloud Messaging} (FCM). Hasil penelitian ini adalah sebuah sistem informasi berbasis web yang berhasil mengotomatisasi alur kerja pendaftaran sertifikasi, meningkatkan efisiensi kerja admin dan asesor, serta memberikan kemudahan akses bagi asesi tanpa perlu mengunduh aplikasi melalui \textit{app store}. Berdasarkan pengujian menggunakan metode \textit{Black Box Testing}, seluruh fungsionalitas sistem informasi yang dibangun telah berjalan dengan baik dan sesuai dengan kebutuhan yang diharapkan.
\vspace{10pt}

\noindent\textbf{Kata Kunci}: \textit{Sistem Informasi, Sertifikasi Kompetensi, Progressive Web App, LSP UNTAN, Black Box Testing.}
\end{spacing}
\normalsize
\newpage

\cleardoublepage
\addcontentsline{toc}{chapter}{DAFTAR ISI}

\begin{spacing}{1}
\tableofcontents
\newpage
\listoftables
\newpage
\listoffigures
\newpage
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR LAMPIRAN}
\listoflampiran
\end{spacing}
\newpage
