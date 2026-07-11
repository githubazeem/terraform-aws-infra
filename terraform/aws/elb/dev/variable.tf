variable "vpcvar" {
  
}

variable "subnetroot" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

