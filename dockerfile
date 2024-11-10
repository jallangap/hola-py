FROM python:3.9
WORKDIR /app
COPY hola.py .
CMD ["python", "hola.py"]