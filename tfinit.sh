#!/bin/bash
set -e

# Function to execute parallel tasks
run_init() {
  local dir=$1
  cd "$dir" || exit 1
  if [[ ! -f ".terraform.lock.hcl" && -n $(ls *.tf 2>/dev/null) ]]; then
    echo "Running terraform init in $dir"
    terraform init
  fi
}

# Find all subdirectories and iterate over them
export -f run_init  # Export the function for parallel processing
find . -type d ! -path './.git*' -print0 | xargs -0 -I {} -P 4 bash -c "run_init $(pwd)/{}"
