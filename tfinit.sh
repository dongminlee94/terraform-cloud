#!/bin/bash
set -e

# 병렬 작업을 수행하는 함수
run_init() {
  local dir=$1
  cd "$dir" || exit 1
  if [[ ! -f ".terraform.lock.hcl" && -n $(ls *.tf 2>/dev/null) ]]; then
    echo "Running terraform init in $dir"
    terraform init
  fi
}

# 모든 서브 디렉토리를 찾고 반복
export -f run_init  # 병렬 처리를 위해 함수를 export
find . -type d -print0 | xargs -0 -I {} -P 4 bash -c "run_init $(pwd)/{}"
