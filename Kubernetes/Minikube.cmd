@echo off
echo Starting Minikube. 
echo As soon as the dashboard is running, it can be stopped using Ctrl+C.
echo Afterwards minikube will be stopped and deleted.

start minikube start

start minikube dashboard

echo Minikube Dashboard stopped. 
echo Stop and Delete Minikube Container as well?
pause

start minikube stop
start minikube delete