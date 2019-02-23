terraform {
  required_version = ">= 0.11.0"
  backend "gcs" {
    bucket  = "tfstate-lab"
    prefix  = "state/"
  }
}

provider "google" {
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}


resource "google_compute_instance" "artifactory" {
  name         = "${var.gci_name}"
  machine_type = "${var.gci_type}"
  zone         = "${var.gcp_zone}"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "${var.gci_image}"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

//  metadata_startup_script = "echo hi > /test.txt"

//  service_account {
//   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
//  }
}
