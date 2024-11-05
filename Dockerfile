# Use official Python image as base
FROM python:3.9

# Set working directory in the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy Django project files into the container
COPY . .

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Run the Django development server by default
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
