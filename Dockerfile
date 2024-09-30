# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Install git to clone the repository
RUN apt-get update && apt-get install -y git && apt-get clean

# Clone the CORS Anywhere repository
RUN git clone https://github.com/Rob--W/cors-anywhere.git .

# Install dependencies
RUN npm install

# Expose the port on which the server will run
EXPOSE 8080

# Define environment variable to allow CORS anywhere
ENV PORT=8080
ENV CORSANYWHERE_WHITELIST='["https://example.com"]' # Optional: Set your whitelist here

# Start the CORS Anywhere server
CMD ["node", "server.js"]
