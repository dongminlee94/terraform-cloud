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

aws-kubeconfig:
	aws eks update-kubeconfig --name eks-cluster --region ap-northeast-1

gcp-kubeconfig:
	gcloud container clusters get-credentials gke-cluster --region asia-northeast1
