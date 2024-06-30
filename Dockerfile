# Grab the official Docker Python base image
FROM python:3.12.3

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work dir
WORKDIR /code

# Install requirements
RUN pip install --upgrade pip
COPY requirements.txt /code/
RUN pip install -r requirements.txt


COPY . /code/

RUN chmod +x /code/wait-for-it.sh
