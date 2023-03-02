# rebuild the image
docker build -t lvdinh/udagram-frontend:v900 ../udagram-frontend
docker tag lvdinh/udagram-frontend:v900 lvdinh/udagram-frontend:latest

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# push the image
docker push lvdinh/udagram-frontend:v900
docker push lvdinh/udagram-frontend:latest

# set the image in eks
kubectl set image deployment udagram-frontend udagram-frontend=lvdinh/udagram-frontend:v900
