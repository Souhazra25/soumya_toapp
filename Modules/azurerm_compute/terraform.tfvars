vms = {
  vm1 = {
    nic_name    = "nic-frontend-vm-01"
    location    = "SoutheastAsia"
    rg_name     = "rg-todo-app-dev"
    vnet_name   = "vnet-todo-app-dev"
    subnet_name = "frontend-subnet"
    pip_name    = "pip-frontend-dev"
    vm_name     = "frontend-vm"
    size        = "Standard_B1s"
    kv_name     = "kv-todo-app-dev"
    admin_username = "admin123"
    admin_password = "P@ssw01rd@123"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
  vm2 = {
    nic_name    = "nic-backend-vm-02"
    location    = "SoutheastAsia"
    rg_name     = "rg-todo-app-dev"
    vnet_name   = "vnet-todo-app-dev"
    subnet_name = "backend-subnet"
    pip_name    = "pip-backend-dev"
    vm_name     = "backend-vm"
    size        = "Standard_B1s"
    kv_name     = "kv-todo-app-dev"
    admin_username = "admin123"
    admin_password = "P@ssw01rd@123"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
