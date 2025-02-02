FROM python:3.11.2

WORKDIR /app.py
COPY . /app.py

RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "app"]
