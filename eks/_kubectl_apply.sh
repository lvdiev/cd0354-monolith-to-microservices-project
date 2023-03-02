# update config
aws eks --region us-east-1 update-kubeconfig --name udagram-eks-cluster

# env variables and secrets
kubectl apply -f env/aws-secret.yaml
kubectl apply -f env/env-secret.yaml
kubectl apply -f env/env-configmap.yaml

# deployments and services
kubectl apply -f feed-deployment.yaml
kubectl apply -f feed-service.yaml

kubectl apply -f user-deployment.yaml
kubectl apply -f user-service.yaml

# kubectl apply -f frontend-deployment.yaml
# kubectl apply -f frontend-service.yaml

kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml

# expose services
kubectl expose service udagram-reverseproxy --type=LoadBalancer  --name=public-reserveproxy --port=80 --target-port=8080

# un-deployments
# kubectl delete --all service
# kubectl delete --all deployment