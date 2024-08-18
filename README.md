# INTRODUCTION
Simple spring boot java app with a greeting endpoint

# PRE-REQUISTIES
1. Docker
2. Kubectl
3. EKSCTL
4. Intellij 
5. Java
6. AWS Account

# COMMANDS
- First create an image using command below

  - `docker build -t govind-eks .`

- Then check if image is listed in your local docker repo

  - `docker images`

- Then run commands to upload your image to a local ecr cluster. Commands can be found on aws ecr. 

- Run eksctl command to create your eks cluster 

  - `eksctl create cluster --name gm-cluster --version 1.28 --nodes=1 --node-type=t2.small --region us-east-1`
- Run kubectl command
  - `kubectl apply -f k8s.yaml`
- Check pods and services 
  - `kubectl get pods` and `kubectl get svc`
- If pods are not running check the logs 
  - `kubectl logs podname`
- Copy the service name from the get svc command and enter into a browser. 