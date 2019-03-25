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
  default = "salt-minion"
}

variable "gci_type" {
  description = "Instance type"
  default = "g1-small"
}

variable "gci_image" {
  description = "Compute instance name"
  default = "centos-cloud/centos-7"
}
