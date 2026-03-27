@echo off
cls
echo ==========================================
echo    MENU GENERATE PDF SKRIPSI (PANDOC)
echo ==========================================
echo 1. Render Bab 1 Saja
echo 2. Render Bab 2 Saja
echo 3. Render Bab 3 Saja
echo 4. Render Bab 4 Saja
echo 5. Render Bab 5 Saja
echo 6. Render Lampiran Saja
echo 7. Render SEMUA FULL (Laporan Akhir)
echo 0. Batal / Keluar
echo ==========================================
set /p choice="Pilih angka (0-7): "

:: Perintah untuk membuat folder Preview jika belum ada
if not exist "Preview" mkdir "Preview"

if "%choice%"=="1" set FILES=01-bab1.md & set OUT=Preview\Preview_Bab1.pdf
if "%choice%"=="2" set FILES=02-bab2.md & set OUT=Preview\Preview_Bab2.pdf
if "%choice%"=="3" set FILES=03-bab3.md & set OUT=Preview\Preview_Bab3.pdf
if "%choice%"=="4" set FILES=04-bab4.md & set OUT=Preview\Preview_Bab4.pdf
if "%choice%"=="5" set FILES=05-bab5.md & set OUT=Preview\Preview_Bab5.pdf
if "%choice%"=="6" set FILES=06-lampiran.md & set OUT=Preview\Preview_Lampiran.pdf
if "%choice%"=="7" set FILES=00-preface.md 01-bab1.md 02-bab2.md 03-bab3.md 04-bab4.md 05-bab5.md 06-lampiran.md & set OUT=DawamAgungFathoni_Laporan_Skripsi.pdf
if "%choice%"=="0" exit /b

echo.
echo Sedang memproses %OUT%...
pandoc metadata.yaml %FILES% --citeproc -o %OUT% --pdf-engine=xelatex --number-sections

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] TERJADI ERROR SAAT MEMPROSES DOKUMEN! Silakan cek pesan di atas.
    pause
    exit /b
)

echo.
echo SELESAI! File %OUT% berhasil dibuat.
timeout /t 3 >nul