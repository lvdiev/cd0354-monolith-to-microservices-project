kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

kubectl autoscale deployment udagram-api-feed --cpu-percent=50 --min=1 --max=2
kubectl autoscale deployment udagram-api-user --cpu-percent=50 --min=1 --max=2

kubectl delete hpa udagram-api-feed
kubectl delete hpa udagram-api-user