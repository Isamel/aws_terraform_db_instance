variable "db_instance_count" {
    type        = bool
    description = "db_instance_count."
}

variable "db_instance_depends_on" {
    type        = list(string)
    description = "db instance depends on."
}

variable "db_instance_allocated_storage" {
    type        = number
    description = "db instance allocated storage."
}

variable "db_instance_max_allocated_storage" {
    type        = number
    description = "db instance max allocated storage."
}

variable "db_instance_engine" {
    type        = string
    description = "db instance engine."
}

variable "db_instance_engine_version" {
    type        = string
    description = "db instance engine version."
}

variable "db_instance_instance_class" {
    type        = string
    description = "db instance instance class."
}

variable "db_instance_name" {
    type        = string
    description = "db instance name."
}

variable "db_instance_username" {
    type        = string
    description = "db instance username."
}

variable "db_instance_password" {
    type        = string
    description = "db instance password."
}

variable "db_instance_parameter_group_name" {
    type        = string
    description = "db instance parameter group name."
}

variable "db_instance_multi_az" {
    type        = bool
    description = "db instance multi az."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}