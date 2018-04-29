name="minikube"

kubectl create -f namespaces/namespace-dev.json
kubectl create -f namespaces/namespace-prod.json
kubectl create -f namespaces/namespace-test.json



kubectl config set-context dev --namespace=dev \
  --cluster=$name \
  --user=$name

kubectl config set-context prod --namespace=prod \
  --cluster=$name \
  --user=$name
 
kubectl config set-context meeting --namespace=test \
  --cluster=$name \
  --user=$name
