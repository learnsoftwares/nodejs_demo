# Use an official Node.js runtime as a parent image
FROM node:14

# Create and set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Expose a port (e.g., 3000) that your Node.js application will listen on
EXPOSE 3000

# Define the command to start your Node.js application
CMD [ "node", "index.js" ]
