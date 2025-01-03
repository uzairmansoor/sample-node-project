# # Use an official Node.js runtime as a parent image
# FROM node:18-alpine

# # Set the working directory in the container
# WORKDIR /app

# # Copy the package.json and package-lock.json (if available)
# COPY package*.json /app
# COPY . /app
# # Install dependencies
# RUN npm init -y && npm install express

# # Copy the rest of the application files
# COPY . .

# # Expose the port the app runs on
# EXPOSE 3000

# # Command to run the application
# CMD ["node", "app.js"]
#######################################################################
# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json /app
COPY . /app

# Install dependencies
RUN npm init -y && npm install express

# Set environment variables
ENV APP_ID="123"

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
