@echo off
echo Sedang membuat PDF...
pandoc metadata.yaml 01-bab1.md 02-bab2.md 03-bab3.md 04-bab4.md 05-bab5.md --citeproc -o Hasil_Skripsi.pdf --pdf-engine=xelatex --number-sections
echo.
echo SELESAI! Cek file Hasil_Skripsi.pdf
pause