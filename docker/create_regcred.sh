registry="u7hb34w7z3wwu.azurecr.io"
username="u7hb34w7z3wwu"
password="nchqnlPJEenW8OqLQkt+koAAWJB9Sf/="
email="danielf.tapiar+dev-kubernetes@gmail.com"

kubectl create secret docker-registry regcred --docker-server=$registry --docker-username=$username --docker-password=$password --docker-email=$email
kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 -d

