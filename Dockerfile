FROM python:3.9 

WORKDIR /app 

COPY requirements.txt /app/ 
RUN pip3 install -r requirements.txt 

# Install graphics libraries
RUN apt-get update && apt-get install -y libgl1-mesa-glx

COPY . /app 

CMD python3 mohoe.py
