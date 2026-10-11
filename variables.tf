variable "golden_gate_deployments" {
  description = <<EOT
Map of golden_gate_deployments, attributes below
Required:
    - compartment_id
    - display_name
    - subnet_id
Optional:
    - availability_domain
    - byol_cpu_core_count_limit
    - cluster_placement_group_id
    - cpu_core_count
    - defined_tags
    - deployment_backup_id
    - deployment_type
    - description
    - disaster_recovery_status
    - environment_type
    - fault_domain
    - fqdn
    - freeform_tags
    - is_auto_scaling_enabled
    - is_byol_cpu_core_count_limit_enabled
    - is_lock_override
    - is_public
    - license_model
    - load_balancer_subnet_id
    - nsg_ids
    - security_attributes
    - source_deployment_id
    - state
    - subscription_id
    - backup_schedule (block):
        - bucket (required)
        - compartment_id (required)
        - frequency_backup_scheduled (required)
        - is_metadata_only (required)
        - namespace (required)
        - time_backup_scheduled (required)
    - locks (block):
        - message (optional)
        - type (required)
    - maintenance_configuration (block):
        - bundle_release_upgrade_period_in_days (optional)
        - interim_release_upgrade_period_in_days (optional)
        - is_interim_release_auto_upgrade_enabled (optional)
        - major_release_upgrade_period_in_days (optional)
        - security_patch_upgrade_period_in_days (optional)
    - maintenance_window (block):
        - day (required)
        - start_hour (required)
    - ogg_data (block):
        - admin_password (optional)
        - admin_username (optional)
        - certificate (optional)
        - credential_store (optional)
        - deployment_name (optional)
        - group_to_roles_mapping (optional, block):
            - administrator_group_id (optional)
            - operator_group_id (optional)
            - security_group_id (required)
            - user_group_id (optional)
        - identity_domain_id (optional)
        - key (optional)
        - key_secret_id (optional)
        - ogg_version (optional)
        - password_secret_id (optional)
    - placements (block):
        - availability_domain (optional)
        - fault_domain (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                       = string
    display_name                         = string
    subnet_id                            = string
    availability_domain                  = optional(string)
    byol_cpu_core_count_limit            = optional(number)
    cluster_placement_group_id           = optional(string)
    cpu_core_count                       = optional(number)
    defined_tags                         = optional(map(string))
    deployment_backup_id                 = optional(string)
    deployment_type                      = optional(string)
    description                          = optional(string)
    disaster_recovery_status             = optional(string)
    environment_type                     = optional(string)
    fault_domain                         = optional(string)
    fqdn                                 = optional(string)
    freeform_tags                        = optional(map(string))
    is_auto_scaling_enabled              = optional(bool)
    is_byol_cpu_core_count_limit_enabled = optional(bool)
    is_lock_override                     = optional(bool)
    is_public                            = optional(bool)
    license_model                        = optional(string)
    load_balancer_subnet_id              = optional(string)
    nsg_ids                              = optional(set(string))
    security_attributes                  = optional(map(string))
    source_deployment_id                 = optional(string)
    state                                = optional(string)
    subscription_id                      = optional(string)
    backup_schedule = optional(object({
      bucket                     = string
      compartment_id             = string
      frequency_backup_scheduled = string
      is_metadata_only           = bool
      namespace                  = string
      time_backup_scheduled      = string
    }))
    locks = optional(list(object({
      message = optional(string)
      type    = string
    })))
    maintenance_configuration = optional(object({
      bundle_release_upgrade_period_in_days   = optional(number)
      interim_release_upgrade_period_in_days  = optional(number)
      is_interim_release_auto_upgrade_enabled = optional(bool)
      major_release_upgrade_period_in_days    = optional(number)
      security_patch_upgrade_period_in_days   = optional(number)
    }))
    maintenance_window = optional(object({
      day        = string
      start_hour = number
    }))
    ogg_data = optional(object({
      admin_password   = optional(string)
      admin_username   = optional(string)
      certificate      = optional(string)
      credential_store = optional(string)
      deployment_name  = optional(string)
      group_to_roles_mapping = optional(object({
        administrator_group_id = optional(string)
        operator_group_id      = optional(string)
        security_group_id      = string
        user_group_id          = optional(string)
      }))
      identity_domain_id = optional(string)
      key                = optional(string)
      key_secret_id      = optional(string)
      ogg_version        = optional(string)
      password_secret_id = optional(string)
    }))
    placements = optional(list(object({
      availability_domain = optional(string)
      fault_domain        = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.golden_gate_deployments : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
}

