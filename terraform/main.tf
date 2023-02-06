terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

resource "docker_image" "my-postgres-image" {
  name = "my-postgres-image2"
  build {
    context = "."
  }
}

resource "docker_container" "my-postgres-container" {
  name  = "my-postgres-container"
  image = docker_image.my-postgres-image.name
  ports {
    internal = 5432
    external = 5432
  }

}
