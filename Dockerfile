# Use an official Python runtime as a parent image
FROM python:3.7.3-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80 for the Flask app
EXPOSE 80

# Define environment variable
ENV PORT=80

# Run app.py when the container launches
CMD ["python", "app.py"]