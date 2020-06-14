locals {
  tags  = merge(
      map("key", "resource_name", "value", var.db_instance_name),
      var.extra_tags
  )
}