FROM python:3.9
WORKDIR /app

RUN pip install flask

COPY hola.py /app/hola.py
COPY web.py /app/web.py

CMD ["python", "web.py"]
