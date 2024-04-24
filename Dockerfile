# Base image for Python environment
FROM python:3.9

# Create a working directory
WORKDIR /3tier-architecture-with-cdk-main

# Copy requirements.txt
COPY requirements.txt ./

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy your application code
COPY . .

# Expose the port the service runs on (replace 8000 with your actual port)
EXPOSE 8000

# Command to run the application (replace 'app.py' with your main script)
CMD ["python", "app.py"]
