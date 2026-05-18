#!/bin/bash

# Cluster details
CLUSTER_NAME="lankesh.k8s.local"
STATE_STORE="s3://lankeshbucket"

# Export state store
export KOPS_STATE_STORE=$STATE_STORE

echo "Updating Instance Group..."

# Increase node count
kops edit ig nodes-us-east-1a \
--name=$CLUSTER_NAME \
--set spec.minSize=2,spec.maxSize=4

echo "Applying cluster changes..."

kops update cluster \
--name=$CLUSTER_NAME \
--yes

echo "Starting rolling update..."

kops rolling-update cluster \
--name=$CLUSTER_NAME \
--yes

echo "Cluster scaling completed."
