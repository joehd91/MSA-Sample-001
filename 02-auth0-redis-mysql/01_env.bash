# Azure Login


# Azure Subscription Settinhg
az account set --subscription 6dea9029-4dbd-4533-a99e-52b5b34dc988

# AKS 인증
az aks get-credentials --resource-group sample-rg --name sample-aks-001




# ----------------------------------------------------------------------
# openjdk 설치
sudo apt update
sudo apt-get install openjdk-11-jdk

# gradle 설치
# - 다운로드
wget https://services.gradle.org/distributions/gradle-7.6-bin.zip
# - 압축풀기
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
# - 환경변수 설정
sudo vi /etc/profile.d/gradle.sh
export GRADLE_HOME=/opt/gradle/gradle-6.4.1
export PATH=${GRADLE_HOME}/bin:${PATH}
# - 환경변수 로드 
source /etc/profile.d/gradle.sh
# - 쓰기 권한 설정
chmod +x gradlew
