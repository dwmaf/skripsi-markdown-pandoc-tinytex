# PENUTUP

## Kesimpulan

Berdasarkan dari hasil dan perancangan serta pengujian aplikasi yang telah dilakukan oleh penulis, maka dapat ditarik kesimpulan bahwa kerja praktik ini sebagai berikut.

1. Kerja praktik ini telah menghasilkan sebuah sistem aplikasi Self Printing berbasis web yang mampu mengintegrasikan alur kerja antara perangkat mahasiswa, panel operator, dan mesin anjungan secara terpusat.
2. Implementasi teknologi WebSocket menggunakan Laravel Reverb berhasil mengatasi kendala komunikasi data tradisional, memungkinkan sinkronisasi status persetujuan cetak secara *real-time* tanpa memerlukan penyegaran (*refresh*) halaman manual pada layar anjungan.
3. Arsitektur backend yang dirancang mampu menangani pengiriman dokumen secara *asynchronous* dan melakukan pembaruan daftar antrian pada sisi operator secara otomatis saat terjadi aktivitas pengunggahan file oleh pengguna.
4. Dengan adanya sistem ini, UPA PK2 UNTAN kini memiliki mekanisme kontrol yang lebih baik terhadap penggunaan sumber daya cetak (kertas dan toner) melalui tahap verifikasi operator sebelum dokumen diproses oleh printer.

## Saran

Beberapa saran yang dapat diberikan untuk pengembangan aplikasi Self Printing ini di masa mendatang adalah sebagai berikut:

1. Pengembangan fitur pratinjau dokumen yang lebih interaktif ketika pengguna memilih custom halaman, pratinjau dokumen mengikuti custom halaman yang diinputkan pengguna untuk meminimalisir kesalahan format cetak.
3. Optimalisasi sistem manajemen file pada server agar secara otomatis menghapus dokumen lama yang sudah berhasil dicetak guna menjaga kapasitas penyimpanan server tetap efisien.

\newpage

# DAFTAR PUSTAKA