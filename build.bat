@echo off

if exist eal-backend rmdir /s /q eal-backend
if exist eal-frontend rmdir /s /q eal-frontend

git clone https://github.com/eeboAvitoLovers/eal-backend.git
git clone https://github.com/eeboAvitoLovers/eal-frontend.git

cd eal-backend
docker build -t eal-backend .
cd ..

cd eal-frontend
docker build -t eal-frontend .
cd ..
