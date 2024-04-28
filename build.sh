#!/bin/bash

if [ -d "eal-backend" ]; then
  rm -rf eal-backend
fi
if [ -d "eal-frontend" ]; then
  rm -rf eal-frontend
fi

git clone https://github.com/eeboAvitoLovers/eal-backend.git
git clone https://github.com/eeboAvitoLovers/eal-frontend.git

cd eal-backend
docker build -t eal-backend .
cd ..

cd eal-frontend
docker build -t eal-frontend .
cd ..