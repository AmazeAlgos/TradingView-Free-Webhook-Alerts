#FROM python:3.10.13-slim-bookworm
FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy all local files to the container at /app
COPY . /app

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies defined in requirements.txt
RUN pip install -r requirements.txt

# Specify the command to run on container start
CMD ["python3", "main.py"]
