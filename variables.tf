variable "policy_set_definition_lookup" {
  description = <<EOT
Map of policy_set_definition_lookup, attributes below
Optional:
    - display_name
    - management_group_name
    - name
EOT

  type = map(object({
    display_name          = optional(string)
    management_group_name = optional(string)
    name                  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.policy_set_definition_lookup : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.policy_set_definition_lookup : (
        v.name == null || (length(v.name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

