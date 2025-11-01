# 1️⃣ Build stage
FROM golang:1.25.3-alpine3.22 AS builder

# Set working directory
WORKDIR /app

# Copy Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod tidy

# Copy all source code
COPY . .

# Build the Go binary (static build)
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# 2️⃣ Final stage (small runtime image)
FROM alpine:3.22

WORKDIR /app

# Copy binary and config file from builder
COPY --from=builder /app/main .
COPY --from=builder /app/config.json .
COPY --from=builder /app/config.go .

# Expose port your app listens to
EXPOSE 8080

# Run the app
CMD ["./main"]


