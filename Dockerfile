FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application source code
COPY . .

# Expose the application port
EXPOSE 8080

# Define environment variable
ENV PORT=8080

# Start the application
CMD ["npm", "start"]
