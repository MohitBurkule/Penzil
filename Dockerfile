# Use Node.js as base image
FROM node:14-alpine as build-stage

# Set working directory
WORKDIR /app

# Copy package.json, yarn.lock and the local tarball
COPY package.json yarn.lock camera-controls-1.25.3.tgz ./

# Install dependencies 
# We need to copy the tarball first before running yarn install
RUN yarn install

# Copy the rest of the application
COPY . .

# Build the application
RUN yarn build

# Production stage
FROM nginx:stable-alpine as production-stage

# Copy built assets from build stage
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]