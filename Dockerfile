# Use an official  runtime as a parent image
FROM java:8-jre
FROM maven

# Set the working directory to /app
WORKDIR /workflowte

# Copy the current directory contents into the container at /app
ADD . /workflowte

# Make port 80 available to the world outside this container
EXPOSE 8121

# Run app.py when the container launches
CMD ["mvn", "spring-boot:run"]
