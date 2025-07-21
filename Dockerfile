# Use the official Node.js image
FROM public.ecr.aws/docker/library/node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
