
module "aws_vpc" {
  source = "../../modules/vpc"
  vpccidr = var.vpcvar
}


module "aws_subnet" {
  depends_on = [module.aws_vpc]
  source = "../../modules/subnet"
  subnetchild = var.subnetroot
}

