# 🚀 Go CRUD API (Dockerized with MySQL)

A simple **Golang CRUD REST API** connected to **MySQL**, fully containerized using **Docker** and **Docker Compose**.  
This project demonstrates how to build, containerize, and run a production-ready Go REST API in a few simple steps.

---

## 🧩 Features

- 🐹 Go (Golang) REST API using `net/http` and `gorilla/mux`
- 🗄️ MySQL integration using `gorm`
- ⚙️ Configuration management with `viper`
- 🐳 Fully Dockerized (multi-stage build)
- 🔄 Docker Compose setup for API + Database
- 📦 Automatic database migration

---

## 🧠 Tech Stack

| Component | Description |
|------------|--------------|
| **Language** | Go (Golang) |
| **Frameworks** | Gorilla Mux, GORM |
| **Database** | MySQL 8 |
| **Config Management** | Viper |
| **Containerization** | Docker & Docker Compose |

---

## 🧰 Project Structure

golang-crud-rest-api/
├── controllers/ # HTTP handlers (CRUD logic)
├── database/ # DB connection and migration
├── config.go # Loads app configuration
├── main.go # Entry point
├── config.json # App configuration (port, DB string)
├── Dockerfile # Multi-stage Docker build
├── docker-compose.yml # Compose for app + MySQL
└── go.mod / go.sum # Dependencies


---

## ⚙️ Configuration

### `config.json`
```json
{
  "connection_string": "root:password@tcp(mysql:3306)/crud_demo",
  "port": 8080
}

## 🐳 Running with Docker Compose
1️⃣ Build and start containers
docker compose up --build


Use Postman or curl:

Get all products
GET http://localhost:8080/api/products

