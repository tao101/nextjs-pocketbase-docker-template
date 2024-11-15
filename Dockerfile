FROM node:20-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy project files
COPY . .

# Build the Next.js application
RUN npm run build

EXPOSE 3000

# Start the application
CMD ["npm", "start"] 