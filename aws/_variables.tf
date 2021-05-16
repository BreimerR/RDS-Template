variable "project_name" {
  type        = string
  description = "Project description"
}

variable "aws_region" {
  type        = string
  description = "Your availability region"
}

variable "database_password" {
  type        = string
  description = "Define a secure password: Preferred you get an auto-generator for thi"
}

variable "database_name" {
  type        = string
  description = "Your database name"
}

variable "database_identifier" {
  type        = string
  description = "Your database name"
}

variable "database_port" {
  type        = string
  description = "Database access port: required. Default is 3306"
}


#########################################################################################################
## NB
## Database maintenance and backup should not overlap
variable "database_maintenance_window" {
  type        = string
  default     = "sun:00:00-sun:02:00"
  description = "A period when your maintenance starts and stops: i.e day:hour(24hrs):min"
}

variable "database_backup_window" {
  type        = string
  default     = "02:30-04:00"
  description = "A period when your database backup should be done: i.e day:hour(24hrs):min. "
}

#########################################################################################################

variable "database_user" {
  type        = string
  description = "A user name that aligns with your preference/organisation setting: prefer something easy to retain"
}

variable "database_instance_class" {
  type        = string
  description = "Pick an instance class that relates to your expected usage & cost provisions: i.e db.t2.micro"
}

variable "database_storage_types" {
  type = list(map(string))
  default = [
    {
      name        = "gp2"
      description = "Preferred most of the time as it's costs aren't as high"
      cost        = "This is cheaper compared to the other two and it's SSD based"
      min_storage = "20GB"
    },
    {
      name        = "io2"
      description = "A bit expensive"
      min_storage = "100GB"
      cost        = "This is cheaper compared to the other two and it's SSD based"
    }
  ]
  description = "Pick between (gp2,io1, standard). This depend on your expected performance requirements"
}

variable "database_storage_type_index" {
  type        = number
  description = "A number correlating to your preferred storage"
}

variable "instance_classes" {
  type = map(string)
  default = {
    micro     = "db.t3.micro"
    small     = "db.t3.small"
    medium    = "db.t3.medium"
    xlarge    = "db.t3.xlarge"
    _2xlarge  = "db.t3.2xlarge"
    large     = "db.m5.large"
    xlarge    = "db.m5.xlarge"
    _2xlarge  = "db.m5.2xlarge"
    _4xlarge  = "db.m5.4xlarge"
    _8xlarge  = "db.m5.8xlarge"
    _12xlarge = "db.m5.12xlarge"
    _16xlarge = "db.m5.16xlarge"
    _24xlarge = "db.m5.24xlarge"
    large     = "db.r5.large"
    xlarge    = "db.r5.xlarge"
    _2xlarge  = "db.r5.2xlarge"
    _4xlarge  = "db.r5.4xlarge"
    _8xlarge  = "db.r5.8xlarge"
    _12xlarge = "db.r5.12xlarge"
    _16xlarge = "db.r5.16xlarge"
    _24xlarge = "db.r5.24xlarge"
  }
}

variable "allocated_storage" {
  type        = number
  description = "This is the minimum / default size of your database"
}

variable "storage_types" {
  type = map(string)
  default = {
    ssd      = "gp2"
    io1      = "io1"
    standard = "standard"
  }
  description = "This is the minimum / default size of your database"
}


variable "database_engines_versions" {
  type = map(map(string))
  default = {
    mysql = {
      version    = "8.0.20"
      group_name = "default.mysql8.0"
    }
    postgres = {
      version    = ""
      group_name = ""
    }
    amazon_mysql = {
      version    = ""
      group_name = ""
    }
  }
}

variable "database_engine" {
  type        = string
  description = "Database engine name (mysql|postgres...)"
}

variable "max_allocated_storage" {
  type        = number
  description = "This is the minimum / default size of your database"
}

