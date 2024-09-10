# Your Solution

# Publishes Docker images for both book catalog and inventory management services.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./push.sh

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin

# Push book catalog image
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION

# Push inventory management image
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION

echo "Both images have been pushed successfully."
