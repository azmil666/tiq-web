# Use Node LTS
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the project
COPY . .

# Build the app
RUN npm run build

# Expose the port SvelteKit uses
EXPOSE 3000

# Start the server
CMD ["node", "build"]
