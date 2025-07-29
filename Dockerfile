# Use Python 3.11 slim image for better performance
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better Docker layer caching
COPY requirements-deploy.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements-deploy.txt

# Copy application code
COPY . .

# Create logs directory
RUN mkdir -p logs

# Expose port 8000
EXPOSE 8000

# Set environment variable for production
ENV PYTHONPATH=/app
ENV ENVIRONMENT=production

# Command to run the application
CMD ["uvicorn", "main_simple:app", "--host", "0.0.0.0", "--port", "8000"]
