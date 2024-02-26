#!/bin/bash
set -e

# terraform init을 수행하는 함수
run_terraform_init() {
  local dir=$1
  cd "$dir" || exit 1
  if [[ ! -f ".terraform.lock.hcl" && -n $(ls *.tf 2>/dev/null) ]]; then
    echo "Running terraform init in $dir"
    terraform init
  fi
}

# run_terraform_init 함수 내보내기
export -f run_terraform_init

# 모든 서브 디렉토리를 찾고 반복
find . -type d -print0 | xargs -0 -I {} bash -c "run_terraform_init $(pwd)/{}"
