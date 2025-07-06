resource "azurerm_windows_virtual_machine" "web_windows" {
  name                = "web-win-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  admin_password      = var.admin_password
  network_interface_ids = [azurerm_network_interface.web_windows_nic.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  provision_vm_agent = true
  custom_data = filebase64("install_iis.ps1")
}
