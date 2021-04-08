resource "aws_instance" "bastion" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "bastion"
  }

  vpc_security_group_ids = [ aws_security_group.itiSsh.id ]
  subnet_id = module.iti.public1_id
  key_name = aws_key_pair.public.key_name

  provisioner "local-exec" {
    command = "echo ${self.public_ip} is the ip of the bastion!"
  }

}


resource "aws_instance" "application" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "application"
  }

  vpc_security_group_ids = [ aws_security_group.itiSshAndHttp.id ]
  subnet_id = module.iti.public1_id
  key_name = aws_key_pair.public.key_name
}

