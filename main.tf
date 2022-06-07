resource "azurerm_resource_group" "rg1" {
  name     = "rg-mc808080"
  location = "westus3"
}

resource "azurerm_container_group" "container1" {
  name                = "mc808080-hello"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  ip_address_type     = "Public"
  dns_name_label      = "mc808080"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 443
      protocol = "TCP"
    }
  }

  container {
    name   = "sidecar"
    image  = "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
    cpu    = "0.5"
    memory = "1.5"
  }
}
