module "resource_group" {
  source              = "github.com/wesley-trust/tfmodule-resource_group"
  service_environment = var.service_environment
  service_name        = var.service_name
  service_location    = var.service_location
  service_deployment  = var.service_deployment
}

resource "random_password" "password" {
  count = var.resource_instance_count

  length  = 20
  special = true
}