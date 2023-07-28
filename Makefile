init:
	brew install tflint
	brew install pre-commit
	pre-commit install

run:
	terraform init
	terraform plan
	terraform apply

format:
	terraform fmt -recursive
