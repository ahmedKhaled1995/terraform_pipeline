resource "aws_security_group" "redis" {
 name        = "radis"
  description = "allow app to connect to radis"
  vpc_id      = module.iti.vpc_id

    ingress {
    description = "from web to radis"
    from_port   = 6379
    to_port     = 6379
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
    Name = "radis"
  }
}