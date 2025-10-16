FROM nginx:alpine

# Copy all files from current directory to nginx html directory
COPY . /usr/share/nginx/html/

# Set proper permissions for all files
RUN chmod -R 644 /usr/share/nginx/html/* \
    && chmod 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
