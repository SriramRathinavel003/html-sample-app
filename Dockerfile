# Use NGINX as the base image
FROM nginx:alpine

# Remove default NGINX index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML files into the container
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 8000

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
