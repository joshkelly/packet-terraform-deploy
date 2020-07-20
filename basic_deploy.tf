provider "packet" {
  auth_token = var.auth_token
}

locals {
  project_id = var.project_id
}

resource "packet_device" "web1" {
  hostname         = "web1"
  plan             = "t1.small.x86"
  facilities       = ["ewr1"]
  operating_system = "ubuntu_18_04"
  billing_cycle    = "hourly"
  project_id       = local.project_id
}
