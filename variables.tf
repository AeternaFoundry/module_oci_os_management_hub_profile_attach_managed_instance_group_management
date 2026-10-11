variable "os_management_hub_profile_attach_managed_instance_group_managements" {
  description = <<EOT
Map of os_management_hub_profile_attach_managed_instance_group_managements, attributes below
Required:
    - managed_instance_group_id
    - profile_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    managed_instance_group_id = string
    profile_id                = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

