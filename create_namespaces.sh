name="minikube"

kubectl create -f namespaces/namespace-dev.json
kubectl create -f namespaces/namespace-prod.json
kubectl create -f namespaces/namespace-meeting.json



kubectl config set-context dev --namespace=development \
  --cluster=$name \
  --user=$name

kubectl config set-context prod --namespace=production \
  --cluster=$name \
  --user=$name
 
kubectl config set-context meeting --namespace=meeting \
  --cluster=$name \
  --user=$name