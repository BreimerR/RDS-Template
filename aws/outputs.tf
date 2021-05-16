output "port" {
  value = aws_db_instance.db_instance.port
}

output "database_password" {
  value = aws_db_instance.db_instance.password
}

output "endpoint" {
  value = aws_db_instance.db_instance.endpoint
}

output "database_name" {
  value = aws_db_instance.db_instance.name
}

output "username" {
  value = aws_db_instance.db_instance.username
}

