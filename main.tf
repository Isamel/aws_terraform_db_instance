resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.db_instance_depends_on)
    }
}

resource "aws_db_instance" "db_instance_terraform" {
    count                 = var.db_instance_count
    depends_on            = [null_resource.depends_on]
    allocated_storage     = var.db_instance_allocated_storage
    max_allocated_storage = var.db_instance_max_allocated_storage
    storage_type          = var.db_instance_storage_type
    engine                = var.db_instance_engine
    engine_version        = var.db_instance_engine_version
    instance_class        = var.db_instance_instance_class
    name                  = var.db_instance_name
    username              = var.db_instance_username
    password              = var.db_instance_password
    parameter_group_name  = var.db_instance_parameter_group_name
    multi_az              = var.db_instance_multi_az
    tags                  = var.extra_tags
}