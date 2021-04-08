resource "aws_security_group" "rds" {
  name        = "RDS"
  description = "allow app to connect to RDS"
  vpc_id      = module.iti.vpc_id

    ingress {
    description = "from web"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [module.iti.vpc_cider]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

  tags = {
    Name = "RDS"
  }
}

