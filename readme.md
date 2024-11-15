# Important
⚠️ **Note**: This repository does not include a Next.js application. After cloning, you must create a new Next.js application in the root folder:

- This project is a simple Next.js application with a PocketBase backend.
- It is containerized with Docker for both development and production environments.
- The development environment includes hot-reloading for Next.js and persistent volumes for node_modules, Next.js cache, PocketBase data, and PocketBase public files.
- The production setup uses a multi-stage Dockerfile for optimal image size and includes health checks for the PocketBase service.
- Both services are configured with `restart: unless-stopped`.

## Description

A Next.js application with PocketBase backend, containerized with Docker for both development and production environments.

## Prerequisites

- Docker and Docker Compose
- Node.js 20.x (for local development without Docker)
- npm (for local development without Docker)

## Installation

### Using Docker (Recommended)

1. Clone the repository
2. For development:
   ```bash
   docker compose -f docker-compose.dev.yml up
   ```
3. For production:
   ```bash
   docker compose up
   ```

### Local Development Setup

1. Clone the repository
2. Install dependencies:
   ```bash
   npm install
   ```
3. Create `.env.development` file with required environment variables:
   ```env
   POCKETBASE_URL=http://localhost:8090
   ```
4. Start the development server:
   ```bash
   npm run dev
   ```

## Usage

- Development environment runs on `http://localhost:3000`
- PocketBase admin UI is available at `http://localhost:8090/_/`
- PocketBase API endpoints are accessible at `http://localhost:8090/api/`

## Development

The development environment includes:
- Hot-reloading for Next.js
- Persistent volumes for:
  - node_modules
  - Next.js cache
  - PocketBase data
  - PocketBase public files

## Deployment

1. Ensure all production environment variables are set
2. Build and start the production containers:
   ```bash
   docker compose up -d
   ```

### Production Considerations
- The production setup uses a multi-stage Dockerfile for optimal image size
- PocketBase data is persisted using Docker volumes
- Both services are configured with `restart: unless-stopped`
- Health checks are implemented for the PocketBase service

## Project Structure
