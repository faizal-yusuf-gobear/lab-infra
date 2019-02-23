variable "gcp_region" {
  default = "asia-southeast1"
}

variable "gcp_zone" {
  default = "asia-southeast1-a"
}

variable "gcp_project" {
  description = "GCP project name"
  default = "gobear-devops-lab"
}

variable "gci_name" {
  default = "artifactory"
}

variable "gci_type" {
  description = "Instance type"
  default = "n1-standard-1"
}

variable "gci_image" {
  description = "Compute instance name"
  default = "centos-cloud/centos-7"
}
