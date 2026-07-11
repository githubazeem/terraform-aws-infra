# resource "aws_subnet" "main" {

#   for_each =   subnets = {
#     "subnet1" = "10.0.2.0/24"
#     "subnet2" = "10.0.3.0/24"
#     "subnet3" = "10.0.4.0/24"
# }
#   vpc_id     = aws_vpc.az_vpc.id
#   cidr_block = "10.0.1.0/24"

# }


resource "aws_subnet" "subnets" {
  for_each = var.subnetchild

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = each.key
  }
}