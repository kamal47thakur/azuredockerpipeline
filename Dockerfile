# Dockerfile
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY app/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Nginx runs by default in the foreground