provider "packet" {
  auth_token = var.auth_token
}

locals {
  project_id = "719d9c64-7c63-48cd-8068-0db37a3266b3"
}

resource "packet_device" "web1" {
  hostname         = "web1"
  plan             = "t1.small.x86"
  facilities       = ["ewr1"]
  operating_system = "ubuntu_18_04"
  billing_cycle    = "hourly"
  project_id       = local.project_id
}
