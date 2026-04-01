# CalcpadCE Website

Static website for [calcpad-ce.org](https://calcpad-ce.org), served via Nginx in a Docker container.

## Deployment

A GitHub Actions workflow (`.github/workflows/docker-publish.yml`) automatically builds and pushes the Docker image to the GitHub Container Registry on every push.

The image is available at:

```
ghcr.io/<owner>/calcpadce-website:latest
```

The website's docker host will pick up any new image twice a day.
So, after merging it will take max 12h for the website to reflect the changes.

## Building the Docker Image

```bash
docker build -t calcpadce-website .
```

This creates a lightweight image based on `nginx:alpine` that serves the static files from `src/`.

## Running Locally

Run the website container standalone with a port mapping:

```bash
docker run -p 8080:80 calcpadce-website
```

Then open [http://localhost:8080](http://localhost:8080).
