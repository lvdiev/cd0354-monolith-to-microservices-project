# un-deployments
kubectl delete deployment udagram-api-feed
kubectl delete service udagram-api-feed

kubectl delete deployment udagram-api-user
kubectl delete service udagram-api-user

kubectl delete service udagram-frontend
kubectl delete service udagram-frontend

kubectl delete deployment udagram-reverseproxy
kubectl delete service udagram-reverseproxy
kubectl delete service public-reserveproxy

kubectl delete --all service
kubectl delete --all deployment