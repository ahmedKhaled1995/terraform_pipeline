resource "aws_key_pair" "public" {
  key_name   = "terraform"
  public_key = "PUBLIC_SSH_KEY"
}
