kubectl get pods --no-headers=true --all-namespaces |sed -r 's/(\S+)\s+(\S+).*/kubectl --namespace \1 delete pod \2/e'
kubectl delete jobs,daemonsets,replicasets,services,deployments,pods --namespace default --all --grace-period=0 --force


