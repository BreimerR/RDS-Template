locals {
  database_storage_type = var.database_storage_types[var.database_storage_type_index].name
  availability_zone     = data.aws_availability_zones.super_school.names[0]
  production            = false
  test                  = true
}

locals {
  ssh   = 20
  http  = 80
  https = 443
  db    = 3306
}

locals {
  environment = local.production ? "prod" : local.test ? "test" : "dev"
}