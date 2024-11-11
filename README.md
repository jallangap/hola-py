# Python Project

This project is a simple Python application that prints "Hola, mundo" to the console. The application is designed to run in a Docker container, which makes it easy to deploy and execute.

## Table of Contents

- [Project Structure](#project-structure)
- [Dockerfile Explanation](#dockerfile-explanation)
- [Requirements](#requirements)
- [Setup and Execution](#setup-and-execution)
  - [Building the Docker Image](#building-the-docker-image)
  - [Running the Docker Container](#running-the-docker-container)
  - [Running the Script Locally](#running-the-script-locally)
- [License](#license)

## Project Structure

The project contains the following files:

/app ├── Dockerfile └── hola.py


- **Dockerfile**: Specifies the instructions to create a Docker image.
- **hola.py**: Contains the Python code that prints "Hola, mundo".

## Dockerfile Explanation

The `Dockerfile` is structured as follows:

dockerfile

FROM python:3.9

WORKDIR /app

COPY hola.py /app/hola.py

CMD ["python", "hola.py"]


Dockerfile Steps:
Base Image: The base image used is python:3.9, which includes Python version 3.9 and its necessary dependencies.
Working Directory: The WORKDIR /app command sets /app as the working directory inside the container.
File Copy: The COPY instruction copies hola.py from the local directory to the /app directory in the container.
Command Execution: The CMD command specifies that hola.py should be executed with Python when the container starts.

Requirements
[Docker](https://docs.docker.com/get-started/get-docker/) installed on your system to build and run the container.
Alternatively, Python installed on your system if you want to run the script locally without Docker.

Setup and Execution
Follow these instructions to build and run the Docker container for this project.

Building the Docker Image
To build the Docker image, open a terminal in the project directory and run the following command:

docker build -t hola-py .

This command will create an image named python-holamundo based on the instructions in the Dockerfile.

Running the Docker Container
After building the image, you can run the container with the following command:

docker run hola-py

This command will start the container and execute hola.py, displaying the following output:

Hola, mundo


Running the Script Locally
If you prefer to run the Python script directly on your machine without Docker, you can use the following command (assuming Python 3 is installed):

python hola.py

This will also output:

Hola, mundo



