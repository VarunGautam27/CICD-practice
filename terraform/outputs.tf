output "network_name" {
  value = docker_network.labnet.name
}

output "network_subnet" {
  value = var.network_subnet
}

output "proxy_image" {
  value = docker_image.proxy.name
}
