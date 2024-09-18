FROM python:3.12.6-alpine3.20

WORKDIR /app

ENV PYTHONUNBUFFERED=1

COPY . .

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]

