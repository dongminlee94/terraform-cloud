resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = var.nginx_internal_port
    external = var.nginx_external_port
  }
}
