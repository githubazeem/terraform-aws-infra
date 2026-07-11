variable "vpccidr" {}

resource "aws_vpc" "az-vpc" {
  cidr_block = var.vpccidr
}
