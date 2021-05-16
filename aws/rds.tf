resource "aws_db_instance" "db_instance" {

  depends_on = [
    aws_db_subnet_group.default,
    aws_security_group.default
  ]

  name       = var.database_name
  identifier = var.database_identifier
  username   = var.database_user
  password   = var.database_password

  port = var.database_port

  instance_class = var.instance_classes[var.database_instance_class]

  ## Storage
  storage_type          = var.storage_types.ssd
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage

  availability_zone = local.availability_zone

  backup_window      = var.database_backup_window      # "sun:00:00-sun:02:00"
  maintenance_window = var.database_maintenance_window # "sun:02:30-sun:04:00"

  deletion_protection = local.production

  final_snapshot_identifier = var.project_name

  engine = var.database_engine
  //noinspection HILUnresolvedReference
  engine_version = var.database_engines_versions[var.database_engine].version

  multi_az = local.production

  delete_automated_backups = !local.production

  publicly_accessible = !local.production

  allow_major_version_upgrade = true
  auto_minor_version_upgrade  = !local.production


  ## Mot available for mysql
  # timezone = "GMT"

  db_subnet_group_name = aws_db_subnet_group.default.name

  vpc_security_group_ids = [aws_security_group.default.id]

  performance_insights_enabled = !local.production || local.test

  //noinspection HILUnresolvedReference
  parameter_group_name = var.database_engines_versions[var.database_engine].group_name # "default.mysql8.0"

}