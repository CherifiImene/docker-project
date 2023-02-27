# Login to aws cli
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 629595546317.dkr.ecr.us-east-1.amazonaws.com

# Build Docker image
docker build -t udacity_first_docker_app .

# Containerize the app to push it to the repository
docker tag udacity_first_docker_app:latest 629595546317.dkr.ecr.us-east-1.amazonaws.com/udacity_first_docker_app:latest

# Push to ECR
docker push 629595546317.dkr.ecr.us-east-1.amazonaws.com/udacity_first_docker_app:latest