# Use Node.js as base
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm install --production

# Copy app source
COPY . .

# Build Vite project
RUN npm run build

# Expose port 3000 for Railway
EXPOSE 3000

# Start Vite preview in production mode
CMD ["npm", "start"]
