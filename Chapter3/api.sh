echo Getting APISERVER address and port
APISERVER=$(kubectl config view | grep server | cut -f 2- -d ":" | tr -d " ")
echo Getting Auth Token
TOKEN=$(kubectl describe secret $(kubectl get secrets | grep default | cut -f1 -d ' ') | grep -E '^token' | cut -f2 -d':' | tr -d '\t')
echo Access API using curl
curl $APISERVER/api --header "Authorization: Bearer $TOKEN" --insecure
