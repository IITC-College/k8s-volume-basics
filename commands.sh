# Build the Docker image wiht full tag
docker build -t lironefitoussi/k8s-volume-basics:latest .

# Push the Docker image to Docker Hub
docker push lironefitoussi/k8s-volume-basics

# Apply the Kubernetes deployment and service
kubectl apply -f deployment.yml
kubectl apply -f service.yml

# Verify the deployment
kubectl get deployments
kubectl get services
kubectl get pods

# minikube service access the service
minikube service story-service
