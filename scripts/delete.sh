# Your Solution

# Destroys both book catalog and inventory management services on Kubernetes.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number of the images to delete.
#
# Usage:
#
#   ./delete.sh

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Delete book catalog deployment
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -

# Delete inventory management deployment
envsubst < ./scripts/kubernetes/service.yaml | kubectl delete -f -

echo "Both services have been deleted from Kubernetes successfully."
