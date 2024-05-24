#!/bin/bash
set -e

# HOME 디렉토리 저장
export HOME="/home/ec2-user"


print_start_section() {
  local msg="$1"
  local color='\033[0;33m'
  local reset='\033[0m'
  echo -e "\n\n$(printf '=%.0s' {1..80})"
  echo -e "${color} [START] Initialize $msg ${reset}\n"
}

print_end_section() {
  local msg="$1"
  local color='\033[0;32m'
  local reset='\033[0m'
  echo -e "\n${color} [END] Initialize $msg ${reset}"
  echo -e "$(printf '=%.0s' {1..80})\n\n"
}


#################################################################################
# Packages
#################################################################################
print_start_section "Packages"

# 필요한 패키지 설치
yum update -y
yum install -y libicu jq git docker docker-compose-plugin

# Docker 서비스 시작 & ec2-user를 Docker 그룹에 추가
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

# Docker-compose 설치 및 권한 설정
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m) -o /usr/bin/docker-compose
chmod 777 /usr/bin/docker-compose

# Docker-compose 버전 확인
docker-compose version

print_end_section "Packages"


#################################################################################
# Rest of Tasks
#################################################################################
print_start_section "Rest of Tasks"

# 기타 권한 설정
chown -R ec2-user:ec2-user /home/ec2-user/.docker /home/ec2-user/.gitconfig
chmod -R 777 /home/ec2-user/.docker /home/ec2-user/.gitconfig

# 기존 AWS CLI v1 제거
yum remove -y awscli

# AWS CLI v2 다운로드 및 설치
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
ln -s /usr/local/bin/aws /usr/bin/aws
rm -rf awscliv2.zip aws/

print_end_section "Rest of Tasks"


# ec2-user에서 docker 그룹 활성화 (sudo 없이 docker 명령어 사용가능)
newgrp docker
