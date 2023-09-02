resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = var.image_keep_locally
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = var.nginx_internal_port
    external = var.nginx_external_port
  }
}
