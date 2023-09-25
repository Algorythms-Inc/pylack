# Use an appropriate base image (e.g., a Linux distribution)
FROM ubuntu:latest

# Copy your shell script into the container
COPY pylack /app/

# Make your script executable (if needed)
RUN chmod +x /app/pylack

# Define the command to run your script
CMD ["/app/pylack"]
