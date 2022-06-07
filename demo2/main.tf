resource "azurerm_resource_group" "rg1" {
  name     = "rg-mc808080a"
  location = "westus3"
}

resource "random_pet" "aci_name" {
  prefix    = "aci-"
  length    = 3
  separator = ""
}

# resource "azurerm_container_group" "container1" {
#   name                = random_pet.aci_name.id
#   location            = azurerm_resource_group.rg1.location
#   resource_group_name = azurerm_resource_group.rg1.name
#   ip_address_type     = "Public"
#   dns_name_label      = "mc808080"
#   os_type             = "Linux"

#   container {
#     name   = "hello-world"
#     image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
#     cpu    = "0.5"
#     memory = "1.5"

#     ports {
#       port     = 443
#       protocol = "TCP"
#     }
#   }

#   container {
#     name   = "sidecar"
#     image  = "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
#     cpu    = "0.5"
#     memory = "1.5"
#   }
# }

# module "naming" {
#   source  = "app.terraform.io/terraform-on-azure-pm-test/naming/azurerm"
#   suffix = ["pg"]
# }
