rgs = {
  RgA = { name = "rg_mono_prod"
  location = "eastus" }
  }

vnets = {
  VnetA = { name = "vnet_mono_prod"
    location            = "eastus"
    resource_group_name = "rg_mono_prod"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  SubnetA = {
    name                 = "frontend_mono_prod"
    resource_group_name  = "rg_mono_prod"
    virtual_network_name = "vnet_mono_prod"
    address_prefixes     = ["10.0.1.0/24"]
  }
  SubnetB = {
    name                 = "backend_mono_prod"
    resource_group_name  = "rg_mono_prod"
    virtual_network_name = "vnet_mono_prod"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pips = {
  PipA = {
    name                = "pip1_mono_prod"
    resource_group_name = "rg_mono_prod"
    location            = "eastus"
    allocation_method   = "Static"
  }
  PipB = {
    name                = "pip2_mono_prod"
    resource_group_name = "rg_mono_prod"
    location            = "eastus"
    allocation_method   = "Static"
  }
}

vms = {
  VmA = {
    nic_name            = "nic1_mono_prod"
    location            = "eastus"
    resource_group_name = "rg_mono_prod"
    vm_name             = "vm1mono"
    vm_size             = "Standard_D2lds_v7"
    admin_username      = "nikitauser1 "
    admin_password      = "xyz@123"
    nic_subnet_name     = "frontend_mono_prod"
    nic_pip_name        = "pip1_mono_prod"
    nic_vnet_name       = "vnet_mono_prod"
  }

  VmB = {
    nic_name            = "nic2_mono_prod"
    location            = "eastus"
    resource_group_name = "rg_mono_prod"
    vm_name             = "vm2mono"
    vm_size             = "Standard_D2lds_v7"
    admin_username      = "nikitauser2 "
    admin_password      = "xyz@1234"
    nic_subnet_name     = "backend_mono_prod"
    nic_pip_name        = "pip2_mono_prod"
    nic_vnet_name       = "vnet_mono_prod"
  }
} 