variable "docker_host" {
  description = "Docker engine on the Kali runner"
  type        = string
  default     = "unix:///var/run/docker.sock"
}

variable "network_name" {
  description = "Network shared by nginx and both apps"
  type        = string
  default     = "labnet"
}

variable "network_subnet" {
  type    = string
  default = "10.99.0.0/24"
}

variable "network_gateway" {
  type    = string
  default = "10.99.0.1"
}

variable "proxy_image" {
  description = "Base image for the reverse proxy"
  type        = string
  default     = "nginx:1.27-alpine"
}
