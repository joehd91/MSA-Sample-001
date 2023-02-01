# redis helm chart로 설치
helm install -n msa redis .

# 확인
helm list -n msa
kubectl get all -n msa
kubectl get po -n msa

# redis client 실행 (터미널 두개 띄우기)
kubectl run --namespace msa redis-client --image docker.io/bitnami/redis:6.2.7-debian-10-r0 --command -- sleep infinity

# redis컨테이너POD에서Bash Shell 실행
kubectl exec --tty -i redis-client --namespace msa -- bash

# redis-cli를 통한 Redis 접속
redis-cli -h redis-headless

# 현재 Redis 내에 저장된 모든 데이터의 Key 확인
# - 현재 마이크로서비스가 배포가 되지 않아서 캐시 데이터가 없음
keys *

# Key를 통한 Value값 확인 방법
get "Key명"