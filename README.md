# Docker Cleanup Commands

This document provides commands to clean up Docker resources in your workspace.

## Basic Cleanup Commands

```bash
# Remove all stopped containers
docker container prune

# Remove all unused images (not just dangling ones)
docker image prune -a

# Remove all unused volumes
docker volume prune

# Remove all unused networks
docker network prune

# Remove the build cache
docker builder prune

# Remove all unused images
docker image prune -a

# Clean up everything (all-in-one)
docker system prune

# Clean up EVERYTHING AGGRESSIVELY
docker system prune -a --volumes
```

## Forceful Cleanup (Advanced)

To **force remove ALL Docker images** from your system (use with caution):

```bash
docker rmi -f $(docker images -aq)
```

### Command Breakdown:
- `docker images -aq`: Lists all images (`-a`) in quiet mode (`-q`), outputting only image IDs
- `docker rmi -f`: Forcefully removes images by ID

## Complete Cleanup (Nuclear Option)

For a thorough cleanup (stops and removes all containers, then all images):

```bash
# Remove a specific image
docker rmi <image_name:tag>

# Stop all running containers
docker stop $(docker ps -aq)

# Remove all containers
docker rm $(docker ps -aq)

# Remove all images
docker rmi -f $(docker images -aq)
```

## Notes
⚠️ **Warning**: These commands will permanently remove Docker resources. Use with caution, especially in production environments.

- You may need `sudo` if you encounter permission errors
- The `prune` commands are safer as they only remove unused resources
- The forceful commands will remove everything, including resources you might need later
