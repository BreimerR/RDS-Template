database_name               = "your_database_name"
database_identifier         = "your-database-identifier" # no under scores
database_user               = "your-database-user-name"  # any name default can be admin
database_instance_class     = "medium"             # this value depends on your estimated users
database_storage_type_index = 0                          # check storage_types fow supported ones
allocated_storage           = 20                         # this value comes from your estimated initial users
max_allocated_storage       = 100                        # in a scaling situation this value provides  from an autoscaling cap