# Creation of key vault
module "key_vault" {
  source                               = "../"
  resource_location                    = module.resource_group.location
  resource_group_name                  = module.resource_group.name
  resource_environment                 = var.service_environment
  resource_name                        = local.resource_name
  resource_secret                      = random_password.password
  resource_instance_count              = var.resource_instance_count
  resource_key_vault_access_object_ids = var.resource_key_vault_access_object_ids
}