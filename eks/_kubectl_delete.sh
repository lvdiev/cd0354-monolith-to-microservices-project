# un-deployments
kubectl delete deployment udagram-api-feed
kubectl delete service udagram-api-feed

kubectl delete deployment udagram-api-user
kubectl delete service udagram-api-user

kubectl delete --all service
kubectl delete --all deployment