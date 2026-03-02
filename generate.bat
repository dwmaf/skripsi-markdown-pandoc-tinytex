@echo off
echo Sedang membuat PDF...
pandoc metadata.yaml laporan-skripsi.md --citeproc -o Hasil_Skripsi.pdf --pdf-engine=xelatex --number-sections
echo.
echo SELESAI! Cek file Hasil_Skripsi.pdf
pause