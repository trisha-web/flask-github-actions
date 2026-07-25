FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Flask runs on port 5000
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
