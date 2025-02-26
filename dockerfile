# Use official Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Clone the GitHub repository
RUN apk add --no-cache git && \
    git clone https://github.com/Vaibhav-Kak/beginner-html-site-styled.git /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
