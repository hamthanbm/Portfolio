# Use a lightweight web server image as the base image
FROM nginx:alpine

# Copy the website files to the default Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
