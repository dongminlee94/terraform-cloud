terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.33.0"
    }
  }
}

provider "google" {
  project = "nth-infusion-392203"
  region  = "asia-northeast1"
}
