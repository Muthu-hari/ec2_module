variable "my_ami" {
  default = "ami-b46f48db"
}

variable "key" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "root_vol_dev" {
  description = "root disk size"
  default = 10
}