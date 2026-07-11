
module "aws_vpc" {
  source = "../../modules/vpc"
  vpccidr = var.vpcvar
}

