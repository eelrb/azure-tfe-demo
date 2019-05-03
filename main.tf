//--------------------------------------------------------------------
// Variables
#



//--------------------------------------------------------------------
// Modules
module "vm" {
  source  = "app.terraform.io/bleehashiorg/vm/azure"
  version = "0.0.1"

  network_interface_id = "${module.vpc.network_interface_id}"
  resource_group_name = "${module.vpc.resource_group_name}"
}

module "vpc" {
  source  = "app.terraform.io/bleehashiorg/vpc/azure"
  version = "0.0.4"

  resource_group_name = "myrg"
}
