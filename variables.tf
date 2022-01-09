variable "sg_name" {
    description = "Allow ALL inbound traffic"
}

variable "sg_ingress_from_port" {
    default = 0
}

variable "sg_ingress_to_port" {
    default = 0
}

variable "sg_ingress_protocol" {
    default = "-1"
}
variable "sg_ingress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "sg_egress_from_port" {
    default = 0
}

variable "sg_egress_to_port" {
    default = 0
}

variable "sg_egress_protocol" {
    default = "-1"
}

variable "sg_egress_cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "sg_egress_ipv6_cidr_blocks" {
    default = ["::/0"]
}

variable "dynamodb_hash_key" {
    default = "LockID"
}

variable "dynamodb_read_capacity" {
    default = 20
}

variable "dynamodb_write_capacity" {
    default = 20
}

variable "dynamodb_attribute_type" {
    default = 5
}
