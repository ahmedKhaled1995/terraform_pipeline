resource "aws_elasticache_subnet_group" "iti" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [module.iti.public2_id]
}