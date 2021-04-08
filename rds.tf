resource "aws_db_instance" "default" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = var.password
  parameter_group_name = aws_db_parameter_group.p_group.name
  skip_final_snapshot  = true
  vpc_security_group_ids = [ aws_security_group.rds.id ]
  db_subnet_group_name = aws_db_subnet_group.iti.name
  publicly_accessible = false
}
