# ---------- Network the whole stack lives on ----------
resource "docker_network" "labnet" {
  name   = var.network_name
  driver = "bridge"

  ipam_config {
    subnet  = var.network_subnet
    gateway = var.network_gateway
  }
}

# ---------- Base image for nginx, pulled ahead of deploy ----------
resource "docker_image" "proxy" {
  name         = var.proxy_image
  keep_locally = true
}
