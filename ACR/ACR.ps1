# Create ACR
az acr create --resource-group azure-global-summit --name globalsummit --sku Basic

# log into ACR
az acr login --name name_of_ACR

# Pull a Docker image to push to ACR
docker pull nginx:latest

# Tag the Docker image to push to ACR
docker tag nginx name_of_acr/nginx:v1

# Push image to ACR
docker push name_of_acr/nginx:v1