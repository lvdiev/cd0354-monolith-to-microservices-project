# rebuild the image
docker build -t lvdinh/udagram-frontend:v900 ../udagram-frontend

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# push the image
docker push lvdinh/udagram-frontend:v900

# set the image in eks
kubectl set image deployment udagram-frontend udagram-frontend=lvdinh/udagram-frontend:v900
