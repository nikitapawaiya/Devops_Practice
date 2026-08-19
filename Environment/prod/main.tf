module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_vnet"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.resource_group, module.virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pips
}

module "virtual_machine" {
  depends_on = [module.subnet, module.public_ip]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
}