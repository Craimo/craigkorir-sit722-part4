# Your Solution

# Deploys both book catalog and inventory management services to Kubernetes.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number of the images to deploy.
#
# Usage:
#
#       ./deploy.sh

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Deploy book catalog
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -

# Deploy inventory management
envsubst < ./scripts/kubernetes/service.yaml | kubectl apply -f -

# echo "Both services have been deployed successfully."
