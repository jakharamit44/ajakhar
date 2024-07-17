FROM anshumanpm2006/bypass:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libgl1 \
    libfontconfig1 \
    libice6 \
    libgl1-mesa-glx \
    libgl1-mesa-dev \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    libgl1-mesa-dri && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

CMD ["python3 mohoe.py"]
