# project의 ns 생성
kubectl create ns msa

# mysql 설치
helm install -n msa mysql .

# 확인
helm list -n msa
kubectl get all -n msa
kubectl get po -n msa

# mysqldb client 실행 (터미널 두개 띄우기)
kubectl run mysql-client --rm --tty -i --restart='Never' --image docker.io/bitnami/mysql:8.0.29-debian-10-r23 --namespace msa --command -- bash

# 컨테이너 Bash에서 mysqldb cli로 db접속
mysql -h mysql -u root -p
# - 비밀번호는 "password"

# mysqldb database 현황 확인
show databases;

# database 선택
use mapstruct_demo

# table 현황 확인
show tables;

# Table내저장된Data Record 현황확인
select * from author;
select * from user;
# - mysql helm chart의 values.yaml에 아래 해당 부분을 추가했기 때문에 데이터를 확인 가능함
initdbScripts:
  mapstruct_demo.sql

