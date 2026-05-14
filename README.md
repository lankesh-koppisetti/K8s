kops intallation and kubectl
 curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    2  chmod +x kubectl
    3  mv kubectl /usr/local/bin/
    4  curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
    5  chmod +x kops
    6  sudo mv kops /usr/local/bin/kops

-----install awscli----
----
   12  kubectl get pods -o wide
   13  kubectl describe svc myser
   14  kubectl get pods --show-labels
   15  kubectl get endpoints
   16  kubectl exec -it mypod -- sh
   
docker build -t nature-website .
docker run -d -p 8080:80 --name nature-app nature-website
docker tag nature-website:latest lankesh33/nature-website:latest
docker push lankesh33/nature-website:latest

   ---Get Container Names Only
kubectl get pod pod-name -o jsonpath='{.spec.containers[*].name}'
Example:
kubectl get pod deploy-abcde -o jsonpath='{.spec.containers[*].name}'

   kubectl set image deployment/deploy rscont=lankesh33/myapp:v2

   kubectl rollout status deployment deploy
   kubectl rollout history deployment deploy
   kubectl rollout history deployment deploy --revision=6
   
   
   41  git add Dockerfile deployment.yml deploymeny2.yml index.html lb.yml
   42  git add Dockerfile deployment.yml deployment2.yml index.html lb.yml
   43  ll -l
   44  git status
   45  ll -l
   46  git add lbmovie.yml lbzomato.yml pod.yml rc.yml service.yml service1.yml
   47  ll -l
   48  git status
   49  git commit -m "first commit"
   50  git branch -M main
   51  git remote add origin https://github.com/lankesh-koppisetti/K8s.git
   52  git push -u origin main
