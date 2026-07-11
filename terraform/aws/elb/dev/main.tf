
module "aws_vpc" {
  source = "../../modules/vpc"
  vpccidr = var.vpcvar
}


module "aws_subnet" {
  depends_on = [module.aws_vpc]
  source = "../../modules/subnet"
  vpc_id   = module.vpc.vpc_id
  subnetchild = var.subnetroot
}

