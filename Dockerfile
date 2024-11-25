# Use a minimal Python 3.11 Alpine Linux image
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# Copy the project code
COPY . .

# Expose the port (if necessary)
# EXPOSE 8000

# Add custom labels
LABEL author="Your Name" version="1.0.0"
LABEL org.opencontainers.image.source="https://github.com/Snyk-Elvio/autolink"
LABEL io.snyk.containers.image.dockerfile="/Dockerfile"


# Command to run the application (optional)
CMD ["python", "script.py"]