resource "oci_os_management_hub_profile_attach_managed_instance_group_management" "os_management_hub_profile_attach_managed_instance_group_managements" {
  for_each = var.os_management_hub_profile_attach_managed_instance_group_managements

  managed_instance_group_id = each.value.managed_instance_group_id
  profile_id                = each.value.profile_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

