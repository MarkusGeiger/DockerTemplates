# Hello Minikube
kubectl cluster-info
kubectl get nodes

## Deployment
minikube dashboard => Show web interface
kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4
kubectl get deployments
kubectl get pods
kubectl get events
kubectl config view

Pod => Deployed app within the Kubernetes Cluster
Service => Expose pod to the public network

kubectl expose deployment hello-node --type=LoadBalancer --port=8080
kubectl get services
minikube service hello-node => On Docker Windows this keeps running in the terminal window

## AddOns
minikube addons list
minikube addons enable metrics-server
kubectl get pod,svc -n kube-system

## Cleanup
kubectl delete service hello-node
kubectl delete deployment hello-node
Optionally, stop the Minikube virtual machine (VM):

minikube stop
Optionally, delete the Minikube VM:

minikube delete