# Your Solution

# Builds Docker images for both book catalog and inventory management services.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./build.sh

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Build book catalog image
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION --file ./book_catalog/Dockerfile ./book_catalog

# Build inventory management image
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION --file ./inventory_management/Dockerfile ./inventory_management

echo "Both images have been built successfully."
