resource "azurerm_public_ip" "public_ip" {
  name                = "public-lb-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_lb" "public_lb" {
  name                = "public-lb"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  frontend_ip_configuration {
    name                 = "public-lb-frontend"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}
