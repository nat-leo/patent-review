# Use the official Python image
FROM python:3

# Set working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# Define the default command to run your app
CMD ["python", "app.py"]
