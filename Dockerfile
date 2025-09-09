# 1. Base image
FROM python:3.11-alpine

# 2. Create & switch to app dir
WORKDIR /app

# 3. Copy your static files
COPY index.html styles.css /app/

# 4. Expose the port Cloud Run will use
ENV PORT 8080
EXPOSE 8080

# 5. Launch Python's HTTP server on $PORT
CMD ["sh", "-c", "exec python3 -m http.server ${PORT}"]
