provider "aws" {
    region = "eu-west-2"
    access_key = var.aws_access_key_id
    secret_key = var.aws_access_secret_id
}

variable "vpcname" {
  type = string
  default = "myvpc"
}
variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  default = ["Value1","Value2"]
}

variable "mymap" {
  type = map
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}




resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.mylist[0]
  }
}
