# Use the official Python image.
# https://hub.docker.com/_/python
FROM python:3.8-slim

# Set the working directory.
WORKDIR /app

# Install the Flask library
RUN pip install flask

# Copy local code to the container image.
COPY app.py .

# Run the web service on container startup.
CMD ["python", "app.py"]
