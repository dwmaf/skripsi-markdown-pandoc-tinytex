@echo off
echo Sedang membuat PDF...
pandoc metadata.yaml 01-bab1.md 02-bab2.md 03-bab3.md 04-bab4.md 05-bab5.md --citeproc -o DawamAgungFathoni_Laporan_Skripsi.pdf --pdf-engine=xelatex --number-sections
echo.
echo SELESAI! Cek file DawamAgungFathoni_Laporan_Skripsi.pdf
pause