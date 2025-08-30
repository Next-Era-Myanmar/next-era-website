# Stage 1: Build
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy required files
COPY ./src .
COPY ./nginx/conf.d /etc/nginx/conf.d

# Expose port and start the application
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]