@echo off
cls
echo ==========================================
echo    MENU GENERATE PDF KP (PANDOC)
echo ==========================================
echo 1. Render Bab 1 Saja
echo 2. Render Bab 2 Saja
echo 3. Render Bab 3 Saja
echo 4. Render Bab 4 Saja
echo 5. Render Bab 5 Saja
echo ------------------------------------------
echo 12. Render Bab 1 - 2
echo 13. Render Bab 1 - 3
echo 14. Render Bab 1 - 4
echo 15. Render Bab 1 - 5
echo ------------------------------------------
echo 7. Render SEMUA FULL (Laporan KP)
echo 0. Batal / Keluar
echo ==========================================
set /p choice="Pilih angka (0-7, 12-15): "

:: Perintah untuk membuat folder Preview jika belum ada
if not exist "Preview" mkdir "Preview"

if "%choice%"=="1" set FILES=kp/kp-preface.md kp/kp-bab1.md & set OUT=kp\Preview\Preview_KP_Bab1.pdf
if "%choice%"=="2" set FILES=kp/kp-bab2.md & set OUT=kp\Preview\Preview_KP_Bab2.pdf
if "%choice%"=="3" set FILES=kp/kp-bab3.md & set OUT=kp\Preview\Preview_KP_Bab3.pdf
if "%choice%"=="4" set FILES=kp/kp-bab4.md & set OUT=kp\Preview\Preview_KP_Bab4.pdf
if "%choice%"=="5" set FILES=kp/kp-bab5.md & set OUT=kp\Preview\Preview_KP_Bab5.pdf

:: --- TAMBAHAN RENTANG BAB ---
if "%choice%"=="12" set FILES=kp/kp-bab1.md kp/kp-bab2.md & set OUT=kp\Preview\Preview_KP_Bab1-2.pdf
if "%choice%"=="13" set FILES=kp/kp-bab1.md kp/kp-bab2.md kp/kp-bab3.md & set OUT=kp\Preview\Preview_KP_Bab1-3.pdf
if "%choice%"=="14" set FILES=kp/kp-bab1.md kp/kp-bab2.md kp/kp-bab3.md kp/kp-bab4.md & set OUT=kp\Preview\Preview_KP_Bab1-4.pdf
if "%choice%"=="15" set FILES=kp/kp-bab1.md kp/kp-bab2.md kp/kp-bab3.md kp/kp-bab4.md kp/kp-bab5.md & set OUT=kp\Preview\Preview_KP_Bab1-5.pdf

if "%choice%"=="7" set FILES=kp/kp-preface.md kp/kp-bab1.md kp/kp-bab2.md kp/kp-bab3.md kp/kp-bab4.md kp/kp-bab5.md & set OUT=DawamAgungFathoni_Laporan_KP.pdf
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