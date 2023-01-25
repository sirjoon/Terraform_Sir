#variable "network_interface_id" {
#  type = string
#  default = "subnet-0b67b1fdcec2b9d73"
#}

variable "ami" {
    type = string
    default = "ami-0ee23bfc74a881de5"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
