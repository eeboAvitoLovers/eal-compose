#!/bin/bash

# Clone the repositories
git clone https://github.com/eeboAvitoLovers/eal-backend.git
git clone https://github.com/eeboAvitoLovers/eal-frontend.git

# Build the backend image
cd eal-backend
docker build -t eal-backend .
cd ..

# Build the frontend image
cd eal-frontend
docker build -t eal-frontend .
cd ..