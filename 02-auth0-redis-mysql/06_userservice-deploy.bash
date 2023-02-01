# gradlew를 사용하여 userservice 빌드
# - 경로: msa/userservice
./gradlew clean build

# acr 로그인
az login
az account set --subscription 6dea9029-4dbd-4533-a99e-52b5b34dc988
# az acr login --name sampleacr001 -u sampleacr001 -p dcyEuoRT+QPip0ShJvi9bavfH4L1FJXVitpuwaUl/m+ACRCwsqcF
sudo docker login sampleacr001.azurecr.io --username sampleacr001 --password dcyEuoRT+QPip0ShJvi9bavfH4L1FJXVitpuwaUl/m+ACRCwsqcF

# 컨테이너 빌드
sudo docker build -t sampleacr001.azurecr.io/userservice:1.0 .

# 컨테이너 Push
sudo docker push sampleacr001.azurecr.io/userservice:1.0