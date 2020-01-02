resource "aws_security_group" "parity" {
  name        = local.name
  description = local.name
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = "22"
    to_port   = "22"
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  ingress {
    from_port = 8545
    to_port   = 8545
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  ingress {
    from_port = 8546
    to_port   = 8546
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  egress {
    protocol  = -1
    from_port = 0
    to_port   = 0

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = local.tags
}
