resource "azurerm_resource_group" "rg6" {
  name     = "rg-new-6"
  location = "Canada Central"
  tags = {
    env    = "dev"
    owner  = "Kenan Bey"
    owner2 = "Burak Bey"
  }
}


module "myrg" {
  source      = "./modules/rg"
  rg_name     = var.myrgname
  rg_location = var.myrglocation
}

