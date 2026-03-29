# Calcpad CE Website

Static website for [calcpad-ce.org](https://calcpad-ce.org), served via Nginx in a Docker container.

## Project Structure

```
├── Dockerfile              # Nginx-based container image
├── docker-compose.yml      # Full deployment (website + API) with Traefik
├── nginx.conf              # Nginx server configuration
└── src/
    └── index.html          # Website source files
```

## Building the Docker Image

```bash
docker build -t calcpad-website .
```

This creates a lightweight image based on `nginx:alpine` that serves the static files from `src/`.

## Running Locally

Run the website container standalone with a port mapping:

```bash
docker run -p 8080:80 calcpad-website
```

Then open [http://localhost:8080](http://localhost:8080).

## CI/CD

A GitHub Actions workflow (`.github/workflows/docker-publish.yml`) automatically builds and pushes the Docker image to the GitHub Container Registry on every push.

The image is available at:

```
ghcr.io/<owner>/calcpadce-website:latest
```
