#!/bin/bash

# start_servers.sh
# Launches Docker containers for each API app

set -e

echo "[Docker] Starting Appwrite..."
docker run -d --rm --name appwrite -p 80:80 appwrite/appwrite

echo "[Docker] Starting Gitea..."
docker run -d --rm --name gitea -p 3000:3000 gitea/gitea:1.16.7

echo "[Docker] Starting Jellyfin..."
docker run -d --rm --name jellyfin -p 8096:8096 jellyfin/jellyfin:10.7.1

echo "[✓] All services started."
