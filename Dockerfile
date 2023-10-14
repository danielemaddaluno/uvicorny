# Use the official Python image as the base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /web

# Copy the current directory contents into the container at /web
COPY . /web/

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt


# Command to run the application
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8000"]
