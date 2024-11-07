# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask in the container
RUN pip install Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the environment variable for Flask
ENV FLASK_APP=app.py

# Run app.py when the container launches
CMD ["python", "app.py"]
