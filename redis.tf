resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "cluster-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379

  #subnet_group_name    = aws_elasticache_subnet_group.elastic_subnet.name
  #security_group_ids   = [ aws_security_group.radis_private_security_group.id ]

  subnet_group_name = aws_elasticache_subnet_group.iti.name
  security_group_ids = [ aws_security_group.redis.id ]
}


# Error: error creating ElastiCache Cache Cluster: CacheSubnetGroupNotFoundFault: Cache Subnet Group main does not exist.  
       
#        status code: 400, request id: 1b1a266b-6345-41e4-9cea-ebd1bd98986b