# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Clone the CORS Anywhere repository
RUN git clone https://github.com/Rob--W/cors-anywhere.git .

# Install dependencies
RUN npm install

# Expose the port on which the server will run
EXPOSE 8080

# Start the CORS Anywhere server
CMD ["node", "server.js"]
