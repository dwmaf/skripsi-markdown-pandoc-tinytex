@echo off
echo Sedang membuat PDF...
pandoc metadata.yaml kp/kp-bab1.md kp/kp-bab2.md kp/kp-bab3.md kp/kp-bab4.md kp/kp-bab5.md --citeproc -o Hasil_KP.pdf --pdf-engine=xelatex --number-sections
echo.
echo SELESAI! Cek file Hasil_KP.pdf
pause