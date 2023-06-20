resource "aws_ssm_parameter" "secret" {
  name        = "/dev/database/password/master"
  description = "The parameter description"
  type        = "SecureString"
  value       = var.db_password

  tags = {
    environment = "dev"
  }
}