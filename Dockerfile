# Use the official Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source code
COPY . .

# Expose port (same as in app)
EXPOSE 3000

# Start the application

ENTRYPOINT ["npm"]

CMD ["start"]
