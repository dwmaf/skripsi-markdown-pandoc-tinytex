\thispagestyle{empty}
\begin{center}
\fontsize{14pt}{17pt}\selectfont
\textbf{LAPORAN KERJA PRAKTEK}\\
\textbf{IMPLEMENTASI TEKNOLOGI WEBSOCKET UNTUK SINKRONISASI DATA \textit{REAL-TIME} PADA \textit{BACKEND WEBSITE SELF-PRINTING} DI UPA PK2 UNTAN}


\normalsize

\vspace{40pt}
\fontsize{14pt}{17pt}\selectfont
\textbf{OLEH:}\\
\textbf{Dawam Agung Fathoni}\\
\textbf{D1041211005}\\
\textbf{Jumlah SKS Tempuh : 143 SKS}

\vspace{40pt}
\includegraphics[width=5cm]{images/logo-untan.png}
\vspace{50pt}

\textbf{PROGRAM STUDI INFORMATIKA}\\
\textbf{FAKULTAS TEKNIK UNIVERSITAS TANJUNGPURA}\\
\textbf{PONTIANAK}\\
\textbf{2026}
\normalsize
\end{center}
\newpage


<!-- HALAMAN PENUJUAN -->
\pagenumbering{roman}
\setcounter{page}{2}
\begin{center}
\textbf{LAPORAN KERJA PRAKTEK}

\textbf{IMPLEMENTASI TEKNOLOGI WEBSOCKET UNTUK SINKRONISASI DATA \textit{REAL-TIME} PADA \textit{BACKEND WEBSITE SELF-PRINTING} DI UPA PK2 UNTAN}
\end{center}

\noindent Laporan kerja praktek yang berjudul “Implementasi Teknologi Websocket Untuk Sinkronisasi Data *Real-Time* Pada *Backend Website Self-Printing* Di UPA PK2 UNTAN” ini disesuaikan dengan judul Kerja Praktek yang telah dilaksanakan oleh penulis. Judul Kerja Praktek yang telah diambil serta dilaksanakan oleh penulis yaitu Implementasi Teknologi Websocket Untuk Sinkronisasi Data *Real-Time* Pada *Backend Website Self-Printing* Di UPA PK2 UNTAN. Laporan Kerja Praktek yang ditujukan kepada “Jurusan/Program Studi Informatika Fakultas Teknik Universitas Tanjungpura Pontianak” ini telah disusun oleh:

\vspace{-1.7em}
\begin{flushleft}
\begin{tabular}{@{}l@{\hspace{1.5cm}}l}
Nama & : Dawam Agung Fathoni \\
NIM  & : D1041211005 \\
Periode Kerja Praktek  & : 23 Januari - 23 Maret 2026
\end{tabular}
\end{flushleft}
\vspace{-1.5em}

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, April 2026
\\
\\
\\
Penulis
\end{tabular}
\end{spacing}
\end{flushright}

\newpage

<!-- HALAMAN PERSETUJUAN -->

\begin{center}
\vspace{2em}
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
\end{tabular*}


\end{center}

\newpage

<!-- HALAMAN BEBAS PLAGIAT -->
\begin{center}
\textbf{SURAT PERNYATAAN BEBAS PLAGIAT}
\end{center}

\noindent Yang bertanda tangan di bawah ini, saya:

\vspace{-1.7em}
\begin{flushleft}
\begin{tabular}{@{}l@{\hspace{1.5cm}}l}
Nama & : Dawam Agung Fathoni \\
NIM  & : D1041211005 \\
Jurusan/Program Studi  & : Informatika \\
Tahun Akademik  & : 2025/2026
\end{tabular}
\end{flushleft}
\vspace{-1.5em}

\noindent Menyatakan bahwa Laporan Kerja Praktek saya yang berjudul:
\vspace{-1.5em}
\begin{center}
\textbf{IMPLEMENTASI TEKNOLOGI WEBSOCKET UNTUK SINKRONISASI DATA \textit{REAL-TIME} PADA \textit{BACKEND WEBSITE SELF-PRINTING} DI UPA PK2 UNTAN}
\end{center}
\vspace{-1.5em}
\noindent Merupakan karya sendiri dan bukan merupakan karya orang lain. Apabila suatu saat nanti terbukti saya melakukan plagiat, maka saya akan menerima sanksi yang telah ditetapkan. 

\noindent Demikian surat pernyataan ini saya buat dengan sebenar-benarnya. 

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, April 2026
\\
\\
\\
\\
Penulis
\end{tabular}
\end{spacing}
\end{flushright}

\newpage

# KATA PENGANTAR {-}
\setlength{\parindent}{1.27cm}
Puji syukur kehadirat Allah SWT karena atas pertolongan-Nya, penulis dapat menyelesaikan penulisan laporan kerja praktek  yang berjudul “Implementasi Teknologi Websocket Untuk Sinkronisasi Data *Real-Time* Pada *Backend Website Self-Printing* Di UPA PK2 UNTAN”. Penulis menyadari dalam penulisan laporan kerja praktek  ini tidak terlepas dari bantuan berbagai pihak. Untuk itu pada kesempatan ini, penulis menyampaikan terima kasih kepada Bapak Dr. Yus Sholva, S.T., M.T. selaku Ketua Jurusan Informatika Fakultas Teknik Universitas Tanjungpura, Bapak Enriko Yudhistira Ramadhan, S.Kom., M.T. selaku Dosen Pembimbing Kerja Praktek, Bapak Donny Hidayat S.Kom selaku Pembimbing Lapangan Kerja Praktek dalam kerja praktek ini. Penulis berharap semoga laporan kerja praktek  ini bermanfaat bagi semua pihak dan bila terdapat kekurangan penulis mengharapkan saran dan kritik yang membangun dari semua pihak untuk menyempurnakan laporan kerja praktek ini.

\vspace{1cm}
\begin{flushright}
\begin{spacing}{1}
\begin{tabular}{@{}l@{}}
Pontianak, April 2026 \\
Penulis, \\
\\
\\
Dawam Agung Fathoni
\end{tabular}
\end{spacing}
\end{flushright}
\newpage

\cleardoublepage
\addcontentsline{toc}{chapter}{DAFTAR ISI}

\begin{spacing}{1}
\tableofcontents
\newpage
\listoftables
\newpage
\listoffigures
\end{spacing}
\newpage
