resource "aws_security_group" "itiSshAndHttp" {
  name        = "allow ssh and http"
  description = "Allow ssh inbound traffic and http"
  vpc_id      = module.iti.vpc_id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # cidr_blocks = [aws_vpc.iti.cidr_block]
    # cidr_blocks = [var.cidr]
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "http"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    # cidr_blocks = [var.cidr]
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}