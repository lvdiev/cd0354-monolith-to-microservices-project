kubectl autoscale deployment udagram-api-feed --cpu-percent=70 --min=1 --max=2
kubectl autoscale deployment udagram-api-user --cpu-percent=70 --min=1 --max=2
kubectl autoscale deployment udagram-frontend --cpu-percent=70 --min=1 --max=2
kubectl autoscale deployment udagram-reverseproxy --cpu-percent=70 --min=1 --max=2
