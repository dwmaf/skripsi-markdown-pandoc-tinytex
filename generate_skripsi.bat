@echo off
echo Sedang memproses PDF...
pandoc metadata.yaml 00-preface.md 01-bab1.md 02-bab2.md 03-bab3.md 04-bab4.md 05-bab5.md 06-lampiran.md --citeproc -o DawamAgungFathoni_Laporan_Skripsi.pdf --pdf-engine=xelatex --number-sections

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] TERJADI ERROR SAAT MEMPROSES DOKUMEN! Silakan cek pesan di atas.
    pause
    exit /b
)

echo.
echo SELESAI! Daftar isi dan tabel sudah diperbarui.
timeout /t 2 >nul