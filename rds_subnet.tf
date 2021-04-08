resource "aws_db_subnet_group" "iti" {
  name       = "main"
  subnet_ids =  [module.iti.public2_id, module.iti.public1_id, module.iti.private1_id]

  tags = {
    Name = "My DB subnet group"
  }
}