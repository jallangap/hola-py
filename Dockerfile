FROM python:3.9
WORKDIR /app
COPY hola.py /app/hola.py
CMD ["python", "hola.py"]
