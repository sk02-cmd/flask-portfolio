# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port
EXPOSE 5000

# Run with gunicorn (recommended for production)
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

