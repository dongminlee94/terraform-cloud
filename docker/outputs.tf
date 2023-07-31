output "image_id" {
  value = docker_image.nginx.id
}

output "container_id" {
  value = docker_container.nginx.id
}
