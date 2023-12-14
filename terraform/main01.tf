# If starting a new project make sure you enable compute api first 
# gcloud services enable compute.googleapis.com

# Configure the Google Cloud provider
provider "google" {
  project = "leafy-summer-405104"
  region  = "us-east1-b"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "f1-micro"
  zone          = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-23.04-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
