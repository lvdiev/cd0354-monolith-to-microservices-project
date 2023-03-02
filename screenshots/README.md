# Screenshots
To help review your infrastructure, please include the following screenshots in this directory::

## Deployment Pipeline
* DockerHub showing containers that you have pushed

    ![Dockerhub](dockerhub.png)

* GitHub repository’s settings showing your Travis webhook (can be found in Settings - Webhook)

    ![Travis integration](travis-ci.png)

* Travis CI showing a successful build and deploy job

    ![Travis build result](travis-build-result.png)

    Build logs

    ![Travis build logs](travis-build-logs.png)

## Kubernetes
* To verify Kubernetes pods are deployed properly
    ```bash
    kubectl get pods
    ```
    ![Pods](kubectl%20get%20pods.png)

* To verify Kubernetes services are properly set up
    ```bash
    kubectl describe services
    ```
    ![kubectl describe services](kubectl%20describe%20services.png)
    ![kubectl describe service](kubectl%20describe%20service%20public%20frontend.png)
    ![kubectl describe service](kubectl%20describe%20service%20public%20reverseproxy.png)
    ![kubectl describe service](kubectl%20describe%20service%20feed.png)
    ![kubectl describe service](kubectl%20describe%20service%20user.png)
    ![kubectl describe service](kubectl%20describe%20service%20frontend.png)
    ![kubectl describe service](kubectl%20describe%20service%20reverseproxy.png)

* To verify that you have horizontal scaling set against CPU usage
    ```bash
    kubectl describe hpa
    ```

    ![Alt text](kubectl%20get%20hpa.png)
    ![Alt text](kubectl%20describe%20hpa%201.png)
    ![Alt text](kubectl%20describe%20hpa%202.png)

* To verify that you have set up logging with a backend application
    ```bash
    kubectl logs {pod_name}
    ```
    ![kubectl logs](kubectl%20logs%20feed.png)
    ![kubectl logs](kubectl%20logs%20user.png)
    ![kubectl logs](kubectl%20logs%20frontend.png)
    ![kubectl logs](kubectl%20logs%20reverseproxy.png)

## Backend logs
* Feed API logs
    ![Alt text](api-feed-logs.png)
* User API logs
    ![Alt text](api-user-logs.png)
