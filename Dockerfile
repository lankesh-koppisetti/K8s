# Use official nginx image
FROM nginx:latest

# Copy index.html into nginx web directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
