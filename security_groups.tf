resource "aws_security_group" "ziyotek_devops_all_all" {
  name        = var.sg_name
  description = "Allow ALL inbound traffic"
  vpc_id      = aws_vpc.ziyotek_devops.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.sg_ingress_from_port
    to_port          = var.sg_ingress_to_port
    protocol         = var.sg_ingress_protocol
    cidr_blocks      = var.sg_ingress_cidr_blocks
  }

  egress {
    from_port        = var.sg_egress_from_port
    to_port          = var.sg_egress_to_port
    protocol         = var.sg_egress_protocol
    cidr_blocks      = var.sg_egress_cidr_blocks
    ipv6_cidr_blocks = var.sg_egress_ipv6_cidr_blocks
  }

  tags = {
    Name = "DevOps-SG-1"
  }
}