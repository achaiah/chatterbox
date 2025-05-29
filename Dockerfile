# Use python:3.11.9-slim as the base image
FROM python:3.11.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy all necessary files first
COPY pyproject.toml ./
COPY README.md ./
COPY LICENSE ./
COPY src/ ./src/
COPY gradio_tts_app.py .

# Install project dependencies
# This will look for pyproject.toml and install dependencies defined there
RUN pip install --no-cache-dir .

# Expose port 5523
EXPOSE 5523

# Command to run the application
CMD ["python", "gradio_tts_app.py"]
