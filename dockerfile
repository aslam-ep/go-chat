# Starting with offical Golang image
FROM golang:1.22.2

# Set the current working Directory inside the container
WORKDIR /app

# Copy the go mod and sum files
COPY go.mod go.sum ./

# Download all dependencies
RUN go mod download

# Copy the source from the current directory to Working Directory
COPY . .

# Build the Go app
RUN go build -o /go-chat ./cmd/main.go

# Expose the port the app runs on
EXPOSE 8080

ENTRYPOINT [ "/go-chat" ]