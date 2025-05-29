# Use python:3.8-alpine as the base image
FROM python:3.8-alpine

# Set the working directory in the container
WORKDIR /app

# Copy pyproject.toml to the working directory
COPY pyproject.toml ./

# Install build tools
RUN pip install --no-cache-dir setuptools wheel

# Install project dependencies
# This will look for pyproject.toml and install dependencies defined there
RUN pip install --no-cache-dir .

# Copy the application source code
COPY src/ ./src/
COPY gradio_tts_app.py .

# Expose port 5523
EXPOSE 5523

# Command to run the application
# Note: We'll modify gradio_tts_app.py in a later step to accept the port
CMD ["python", "gradio_tts_app.py"]
