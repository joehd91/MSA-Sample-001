# ArgoCD NS 생성
kubectl create ns ArgoCD

# ArgoCD 설치
wget https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
chmod +x argocd-linux-amd64
sudo mv argocd-linux-amd64 /usr/local/bin/argocd

# Kubernetes에 배포
kubectl apply -f argocd-install.yml -n argocd

# admin 계정 비밀번호 확인
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

# ArgoCD 접속을 위한 External-IP 확인
kubectl get svc -n argocd

# 배포 Repository 등록을 위한 ssh key 생성
ssh-keygen -t ed25519 -a 100 -f id_rsa
# - GitHub에 SSH 공용키 등록하기
# - ArgoCD에 SSH 개인키 등록하기