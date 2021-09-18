# That is why we tell node here to use the current node image as base.
FROM node:alpine AS builder

# The /app directory should act as the main application directory
COPY package.json .
RUN npm install
COPY . .

# Expose $PORT on container.
# We use a varibale here as the port is something that can differ on the environment.
EXPOSE 3000

# Start the app
CMD ["npm","start"]

