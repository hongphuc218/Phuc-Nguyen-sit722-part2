# Dockerfile for book_catalog microservice

# Use an official Python image
FROM python:3.11-alpine

# Set the working directory to /app/
WORKDIR /app/

# Copy the requirements.txt into the directory
COPY book_catalog/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the book_catalog folder to the directory
COPY /book_catalog/ .

# Run commands when container launch. Set the host IP to 0.0.0.0 and port to 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]