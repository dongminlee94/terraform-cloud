# Terraform with Cloud

[![License: Apache 2.0](https://img.shields.io/badge/license-Apache--2.0-green.svg)](https://opensource.org/licenses/Apache-2.0)
[![Language: Terraform](https://img.shields.io/badge/terraform-~>1.6.0-blueviolet.svg)](https://github.com/hashicorp/terraform/releases)
[![Management: terraform cloud](https://img.shields.io/badge/management-terraform--cloud-darkviolet.svg)](https://developer.hashicorp.com/terraform/cloud-docs)
[![Code style: terraform-fmt](https://img.shields.io/badge/code%20style-terraform--fmt-black.svg)](https://developer.hashicorp.com/terraform/cli/commands/fmt)
[![Linting: tflint](https://img.shields.io/badge/linting-tflint-red)](https://github.com/terraform-linters/tflint)
[![Documentation: terraform-docs](https://img.shields.io/badge/documentation-terraform--docs-blue)](https://github.com/terraform-docs/terraform-docs)

<p align="center"><img src="img/terraform_overview.png" width="800"></p>

Welcome to the repository designed for hands-on experience with Terraform across cloud platforms such as AWS and GCP.

## Installation

For MacOS users, the required packages from this repository can be installed using the following command:

```bash
$ make init
```

This command initializes your setup by installing the necessary dependencies to manage and deploy infrastructure using Terraform on your local system.

## Preparation

### 1. AWS CLI

The AWS CLI is an indispensable command-line tool for managing Amazon Web Services, allowing you to control AWS resources and configure access credentials efficiently.

**Installation**:

Follow the [AWS documentation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) for step-by-step instructions to install the AWS CLI.

**Credential Configuration**:

1. Sign in to the AWS Management Console and go to the IAM service.
2. Select an existing service account or create a new one, verifying it has the correct permissions.
3. Navigate to `Security credentials` in the user details page and choose `Create access key`.
4. Securely store the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
5. Execute `aws configure` in your terminal and input your Access Key ID and Secret Access Key.
6. Specify your default region and preferred output format.

### 2. GCP CLI (gcloud)

The GCP CLI is an essential tool for managing Google Cloud Platform, streamlining the management of resources and credential setup.

**Installation**:

Install the GCP CLI by following the guidelines provided in the [Google Cloud documentation](https://cloud.google.com/sdk/docs/install).

**Credential Configuration**:

1. Access the Google Cloud Console and proceed to the IAM & Admin section to select  `Service accounts`.
2. Confirm that your existing service account has the necessary roles or set up a new one.
3. In the `Keys` tab, hit `Create new key`, opting for the JSON format to generate your key.
4. Treat the resulting JSON file as your `GOOGLE_CREDENTIALS`.
5. Authenticate via `gcloud auth login` in your terminal and configure your project with `gcloud config set project [YOUR_PROJECT_ID]`.

### 3. Kubernetes CLI (kubectl)

The Kubernetes CLI, known as `kubectl`, is a powerful tool that lets you deploy and manage applications on Kubernetes. It provides the necessary command-line interface to run commands against Kubernetes clusters.

**Installation**:

You can install `kubectl` on macOS using the following command:

```bash
$ brew install kubectl
```

This will allow you to interact directly with your Kubernetes clusters, managing the deployment, inspection, and debugging of your containerized applications.

### 4. Terraform Cloud

<p align="center"><img src="img/terraform_cloud_overview.png" width="800"></p>

Terraform Cloud provides a secure, collaborative, cloud-based environment for managing state files and automating infrastructure tasks, greatly enhancing the capabilities over local setups.

<p align="center"><img src="img/terraform_cloud_settings_variable_sets.png" width="800"></p>

Set up variable sets in Terraform Cloud for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` for AWS, and `GOOGLE_CREDENTIALS` for GCP, under `Settings - Variable sets`.

<p align="center"><img src="img/terraform_cloud_projects_and_workspaces.png" width="800"></p>

Effectively manage and categorize your projects and workspaces to align with each cloud service and infrastructure component. Visit the [Terraform Cloud documentation](https://developer.hashicorp.com/terraform/cloud-docs) for comprehensive guidance on configuration and usage.

## Infrastructure

### 1. AWS

Set up a range of AWS resources, starting with IAM roles, VPC for networking, and Security Groups (SG). **It's essential to customize the `sg_my_ip` variable in your Security Group configuration to allow access only from your personal IP address for security purposes. You can modify this by referring to the [AWS Security Group configuration](src/aws/env/sg/main.tf#L6).** For each resource, proceed to the respective workspace in Terraform Cloud and initiate a 'New run' to carry out `terraform plan` and `terraform apply`.

**EC2**

The aim is to deploy an EC2 VM instance and establish an SSH connection to it. Implement the EC2 instance using the same process in Terraform Cloud. Your personal public key must be included in the code for access. Amend your public key at [this file path](src/aws/env/ec2/main.tf#L15) and remember to encode it in base64.

Encode your public key on macOS with:

```bash
$ base64 < ~/.ssh/id_rsa.pub
```

Post-creation, pinpoint the public IP from the AWS console. Then, secure an SSH connection using the command:

```bash
$ ssh -i ~/.ssh/id_rsa ec2-user@your_public_ip
```

**EKS**

The endpoint for EKS is the creation of an EKS cluster, generating a kubeconfig, and the execution of `kubectl` commands. Configure your EKS cluster and obtain the kubeconfig via:

```bash
$ aws eks update-kubeconfig --region <region-code> --name <cluster-name>
```

Validate your cluster's functionality with the following:

```bash
$ kubectl get node
$ kubectl get pod
$ kubectl get svc
```

### 2. GCP

Mirror the AWS approach for GCP: begin with IAM, followed by VPC and Firewall configurations. To ensure your setup is secure, adjust the firewall_my_ip variable in your Firewall rules to permit connections only from your personal IP. This can be done by visiting the [GCP Firewall configuration](src/gcp/env/firewall/main.tf#L7). In Terraform Cloud, each step should be planned and applied through a new run in the relevant workspace.

**GCE**

Your objective with GCE is to bring up a VM instance and connect through SSH. The creation process via Terraform Cloud requires a plan and apply execution. Your personal public key needs to be inserted into the code. You can do this at [this file path](src/gcp/env/gce/main.tf#L16), making sure to use base64 encoding.

To base64 encode your public key on macOS:

```bash
$ base64 < ~/.ssh/id_rsa.pub
```

Following the instance setup, identify the public IP from the GCP console and proceed to SSH login:

```bash
$ ssh -i ~/.ssh/id_rsa ubuntu@your_public_ip
```

**GKE**

For GKE, the objective is the establishment of a GKE cluster, followed by kubeconfig acquisition and `kubectl` command testing. Upon GKE cluster creation, pull the kubeconfig using:

```bash
$ gcloud container clusters get-credentials [CLUSTER_NAME] --region [REGION] --project [PROJECT_ID]
```

Ensure everything is running as expected:

```bash
$ kubectl get node
$ kubectl get pod
$ kubectl get svc
```

In each section, replace the placeholders (denoted by angle brackets <> and square brackets []) with your actual configuration details to correctly execute the commands.
