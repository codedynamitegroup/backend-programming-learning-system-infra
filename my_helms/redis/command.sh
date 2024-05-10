export REDIS_PASSWORD=$(kubectl get secret --namespace default redis -o jsonpath="{.data.redis-password}" | base64 -d)

kubectl run --namespace default redis-client --restart='Never'  --env REDIS_PASSWORD=$REDIS_PASSWORD  --image docker.io/bitnami/redis:7.2.4-debian-12-r13 --command -- sleep infinity
kubectl exec --tty -i redis-client \
   --namespace default -- bash

REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h redis-master
auth admin