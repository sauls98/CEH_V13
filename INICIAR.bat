@echo off
echo CEH Quiz Master
echo ================
echo Abriendo http://localhost:8080
echo Para instalar: Click en [+] en Chrome
start http://localhost:8080
python -m http.server 8080
