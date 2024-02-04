# Use an official Node runtime as a base image
FROM node: 18.16.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the entire app directory to the container
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
