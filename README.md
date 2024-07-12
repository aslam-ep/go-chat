# Go Chat Application
This project is a chat application implemented in Go, utilizing Gorilla WebSocket for real-time communication. It provides endpoints for user authentication and WebSocket operations.

## Features
- User Signup and Login
- User Logout
- WebSocket Room Management
    - Create a Room
    - Join a Room
    - Get Rooms and Clients in a Room

## Requirements
- Go 1.15 or higher
- Docker
- Docker Compose (for simplified setup)

## Setup and Run

### 1. Clone the Repository
```
git clone https://github.com/aslam-ep/go-chat.git
cd go-chat
```

### 2. Build the Docker Image
```
docker-compose build
```

### 3. Start the Application
```
docker-compose up
```

The application will start running at http://localhost:8080.

### 4. API Endpoints

#### User Authentication
- POST /signup - Create a new user
- POST /login - Login with existing credentials
- GET /logout - Logout the currently logged-in user

#### WebSocket Operations
- POST /ws/createRoom - Create a new WebSocket room
- GET /ws/joinRoom/:roomId - Join an existing WebSocket room
- GET /ws/getRooms - Retrieve all active WebSocket rooms
- GET /ws/getClients/:roomId - Get clients connected to a specific WebSocket room