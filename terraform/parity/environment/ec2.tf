
resource "random_shuffle" "public_subnet" {
  input        = data.terraform_remote_state.vpc.outputs.public_subnets
  result_count = 1
}

resource "aws_instance" "parity" {
  ami           = data.aws_ami.parity.id
  instance_type = var.instance_type

  subnet_id = random_shuffle.public_subnet.result[0]

  vpc_security_group_ids = [
    aws_security_group.parity.id
  ]

  tags = local.tags
}

output "aws_instance_parity_public_ip" {
  value = aws_instance.parity.public_ip
}