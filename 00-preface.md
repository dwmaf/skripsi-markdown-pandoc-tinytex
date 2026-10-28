\thispagestyle{empty}
\begin{center}
\begin{spacing}{1}
\vspace*{50pt}
\fontsize{14pt}{17pt}\selectfont
\textbf{PENGEMBANGAN APLIKASI MANAJEMEN SERTIFIKASI PADA LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN \textit{PROGRESSIVE WEB APP} (PWA)}

\vspace{20pt}
\textbf{SKRIPSI}

\normalsize
\vspace{20pt}
Program Studi Sarjana Informatika\\
Jurusan Informatika

\vspace{40pt}
\fontsize{14pt}{17pt}\selectfont
Oleh:\\
\textbf{\underline{DAWAM AGUNG FATHONI} }\\
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

\pagestyle{plain}
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

\noindent menyatakan bahwa dalam skripsi yang berjudul “PENGEMBANGAN APLIKASI MANAJEMEN SERTIFIKASI PADA LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN *PROGRESSIVE WEB APP* (PWA)” tidak terdapat karya yang pernah diajukan untuk memperoleh gelar sarjana di suatu perguruan tinggi manapun. Sepanjang pengetahuan Saya, tidak terdapat karya atau pendapat yang pernah ditulis atau diterbitkan oleh orang lain, kecuali yang secara tertulis diacu dalam naskah ini dan disebutkan dalam Daftar Pustaka.


Demikian pernyataan ini dibuat dengan sebenar-benarnya. Saya sanggup menerima konsekuensi akademis dan hukum di kemudian hari apabila pernyataan yang dibuat ini tidak benar.

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, 8 Oktober 2026 \\
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
PENGEMBANGAN APLIKASI MANAJEMEN SERTIFIKASI PADA LEMBAGA SERTIFIKASI PROFESI UNTAN MENGGUNAKAN \textit{PROGRESSIVE WEB APP} (PWA)

\vspace{1em}
Program Studi Sarjana Informatika\\
Jurusan Informatika

\vspace{1em}
Oleh:

Dawam Agung Fathoni\\
NIM D1041211005

Telah dipertahankan di depan Penguji Skripsi pada tanggal 8 Oktober 2026
dan diterima sebagai salah satu persyaratan untuk memperoleh gelar sarjana.

\vspace{1em}
Susunan Penguji Skripsi:

\noindent
\begin{tabular}{@{}l c l@{}}
Dosen Pembimbing Utama & : & Morteza Muthahhari, S.Kom., M.T.I. \\
                       &   & NIP. 198607092019031008 \\[1em]
Dosen Pembimbing Kedua & : & Dr. Ir. Bomo Wibowo Sanjaya, S.T., M.T., IPM. \\
                       &   & NIP. 197404011999031003 \\[1em]
Dosen Penguji Utama    & : & Enda Esyudha Pratama, S.T., M.T. \\
                       &   & NIP. 198810182019031006 \\[1em]
Dosen Penguji Kedua    & : & Rifqi Anugrah, S.Kom., M.Kom. \\
                       &   & NIP. 199803122024061001 \\
\end{tabular}

\vspace{3em}

\noindent
\begin{tabular*}{\textwidth}{@{}l@{\extracolsep{\fill}}l@{}}
Pontianak, 8 Oktober 2026 \\
Dekan, & Pembimbing Utama, \\[4em]
Dr.-Ing. Ir. Slamet Widodo, M.T., IPM. & Morteza Muthahhari, S.Kom., M.T.I. \\
NIP. 196712231992031002 & NIP. 198607092019031008
\end{tabular*}

\end{spacing}
\end{center}

\newpage

\phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PERSEMBAHAN}

\vspace*{\fill}
\begin{center}
Dengan penuh rasa syukur, karya sederhana ini saya persembahkan untuk kedua orang tua tercinta, dosen pembimbing, dosen penguji, teman-teman saya, serta diri saya sendiri. Semoga skripsi ini bermanfaat, dan semoga setiap baris kode di dalamnya menjadi amal jariyah bagi kita semua.
\end{center}
\vspace*{\fill}
\newpage

# KATA PENGANTAR {-}
\setlength{\parindent}{1.27cm}
Puji syukur kehadirat Allah SWT karena atas pertolongan-Nya, penulis dapat menyelesaikan penulisan tugas akhir penelitian yang berjudul “Pengembangan Aplikasi Manajemen Sertifikasi Pada Lembaga Sertifikasi Profesi  UNTAN Menggunakan *Progressive Web App* (PWA)”. Penulis menyadari dalam penulisan tugas akhir penelitian ini tidak terlepas dari bantuan berbagai pihak. Untuk itu pada kesempatan ini, penulis menyampaikan terima kasih kepada Bapak Dr. Yus Sholva, S.T., M.T. selaku Ketua Jurusan Informatika Fakultas Teknik Universitas Tanjungpura, Bapak Morteza Muthahhari, S.Kom., M.T.I. selaku Dosen Pembimbing I, Bapak Bomo Wibowo Sanjaya selaku Dosen Pembimbing II, Bapak Enda Esyudha Pratama, S.T., M.T. selaku Dosen Penguji I dan Bapak Rifqi Anugrah, S.Kom., M.Kom. selaku Dosen Penguji II dalam penelitian ini. Penulis berharap semoga tugas akhir penelitian ini bermanfaat bagi semua pihak dan bila terdapat kekurangan penulis mengharapkan saran dan kritik yang membangun dari semua pihak untuk menyempurnakan tugas akhir penelitian ini.

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, 8 Oktober 2026 \\
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
Lembaga Sertifikasi Profesi (LSP) Universitas Tanjungpura (UNTAN) didirikan untuk menyelenggarakan proses sertifikasi guna meningkatkan daya saing mahasiswa di dunia kerja. Pada pelaksanaannya, proses pendaftaran sertifikasi masih belum terintegrasi secara terpusat, mengandalkan pengisian formulir pihak ketiga (Google Form), serta melibatkan pengelolaan dokumen fisik yang rentan terhadap risiko kehilangan dan inefisiensi waktu. Penelitian ini bertujuan untuk merancang dan membangun Aplikasi LSP UNTAN yang dapat memfasilitasi keseluruhan proses pendaftaran, verifikasi berkas, asesmen, hingga pengumuman pengambilan sertifikat secara daring. Aplikasi ini dikembangkan menggunakan pendekatan \textit{System Development Life Cycle} (SDLC) dengan model \textit{Waterfall}, menggunakan kerangka kerja Laravel sebagai antarmuka belakang (\textit{backend}) dan Vue.js yang diintegrasikan melalui Inertia.js sebagai antarmuka depan (\textit{frontend}). Penelitian ini turut mengimplementasikan teknologi \textit{Progressive Web App} (PWA) agar aplikasi web mampu memberikan pengalaman menyerupai aplikasi \textit{native}, dengan memanfaatkan fitur \textit{Add to Home Screen} dan \textit{Push Notification} melalui Firebase Cloud Messaging (FCM). Pengujian dilakukan menggunakan tiga metode, yaitu \textit{Black Box Testing} terhadap 34 skenario fungsional pada peran admin, asesor, dan asesi, \textit{Lighthouse Testing} untuk mengaudit kualitas aplikasi, serta validasi kriteria PWA melalui \textit{Developer Tools}. Hasil pengujian \textit{Black Box Testing} menunjukkan seluruh fungsionalitas aplikasi telah berjalan dengan baik dan sesuai kebutuhan yang diharapkan (status Sesuai). Hasil \textit{Lighthouse Testing} menunjukkan skor sempurna (100) pada kategori \textit{Accessibility, Best Practices}, dan SEO, serta skor 97 (kategori Baik) pada \textit{Performance}. Validasi PWA membuktikan bahwa \textit{Service Worker} berjalan aktif, \textit{Web App Manifest} lengkap, aplikasi dapat dipasang ke layar utama perangkat, dan tetap dapat diakses dalam kondisi \textit{offline}. Aplikasi ini berhasil mengotomatisasi alur kerja pendaftaran sertifikasi, meningkatkan efisiensi kerja admin dan asesor, serta memberikan kemudahan akses bagi asesi tanpa perlu mengunduh aplikasi melalui \textit{app store}.
\vspace{10pt}

\noindent Kata Kunci: Aplikasi Sertifikasi, Lembaga Sertifikasi Profesi, \textit{Progressive Web App}, Laravel, \textit{Black Box Testing}.
\end{spacing}
\newpage

# ABSTRACT {-}

\begin{spacing}{1}
\setlength{\parskip}{0pt}
\fontsize{10pt}{12pt}\selectfont
\vspace{10pt}
LSP Universitas Tanjungpura (UNTAN) was established to administer competency certification and improve students' competitiveness in the workforce. However, the certification registration process is still decentralized, relying on a third-party form (Google Form) and physical document management that is prone to loss and inefficiency. This study aims to design and build the LSP UNTAN application to facilitate the entire process of registration, document verification, assessment, and digital certificate issuance online. The system was developed using the Waterfall System Development Life Cycle (SDLC) model, with Laravel as the backend framework and Vue.js integrated through Inertia.js as the frontend. Progressive Web App (PWA) technology was implemented so that the application delivers a native-like experience through Add to Home Screen and Push Notification features powered by Firebase Cloud Messaging (FCM). Testing was conducted using Black Box Testing on 31 functional scenarios across the Admin, Assessor, and Assessee roles, along with Lighthouse Testing and PWA criteria validation via Developer Tools. The results show that all functionalities ran as expected, with Lighthouse scores of 100 for Accessibility, Best Practices, and SEO, and 97 for Performance. PWA validation confirmed that the Service Worker was active, the Web App Manifest was complete, the application was installable, and it remained accessible offline. The application successfully automated the certification workflow, improved the working efficiency of admins and assessors, and simplified access for assessees without requiring an app-store download.
\vspace{10pt}

\noindent Keyword: Black Box Testing; Certification Application; Laravel; LSP UNTAN; Progressive Web App.
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
