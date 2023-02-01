# gradlew를 사용하여 authorservice 빌드
# - 경로: msa/authorservice
./gradlew clean build
# - 안되면 gradle wrap 입력하고 ./gradlew clean build 또는./gradlew clean build --debug

# acr 로그인
az login
az account set --subscription 6dea9029-4dbd-4533-a99e-52b5b34dc988
# az acr login --name sampleacr001 -u sampleacr001 -p dcyEuoRT+QPip0ShJvi9bavfH4L1FJXVitpuwaUl/m+ACRCwsqcF
sudo docker login sampleacr001.azurecr.io --username sampleacr001 --password dcyEuoRT+QPip0ShJvi9bavfH4L1FJXVitpuwaUl/m+ACRCwsqcF

# 컨테이너 빌드
sudo docker build -t sampleacr001.azurecr.io/authorservice:1.0 .

# 컨테이너 Push
sudo docker push sampleacr001.azurecr.io/authorservice:1.0

# ACR과 연결할 수 있도록 인증정보를 AKS에 배포
kubectl create secret docker-registry sampleacr001 \
    --namespace msa \
    --docker-server=sampleacr001.azurecr.io \
    --docker-username=sampleacr001 \
    --docker-password=dcyEuoRT+QPip0ShJvi9bavfH4L1FJXVitpuwaUl/m+ACRCwsqcF

# * ArgoCD를 통해 author를 배포하기 전에 value.yaml에서 secret.username, secret.password가 인코딩된 코드가 맞는지 확인
# echo -n "username" | base64
# echo -n "password" | base64