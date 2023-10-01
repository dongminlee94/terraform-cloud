init:
	brew tap hashicorp/tap
	brew install hashicorp/tap/terraform
	brew install tflint
	brew install terraform-docs
	brew install pre-commit
	pre-commit install

check:
	pre-commit run -a

tfinit:
	sh tfinit.sh
