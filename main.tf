resource "oci_golden_gate_deployment" "golden_gate_deployments" {
  for_each = var.golden_gate_deployments

  compartment_id                       = each.value.compartment_id
  display_name                         = each.value.display_name
  subnet_id                            = each.value.subnet_id
  availability_domain                  = each.value.availability_domain
  byol_cpu_core_count_limit            = each.value.byol_cpu_core_count_limit
  cluster_placement_group_id           = each.value.cluster_placement_group_id
  cpu_core_count                       = each.value.cpu_core_count
  defined_tags                         = each.value.defined_tags
  deployment_backup_id                 = each.value.deployment_backup_id
  deployment_type                      = each.value.deployment_type
  description                          = each.value.description
  disaster_recovery_status             = each.value.disaster_recovery_status
  environment_type                     = each.value.environment_type
  fault_domain                         = each.value.fault_domain
  fqdn                                 = each.value.fqdn
  freeform_tags                        = each.value.freeform_tags
  is_auto_scaling_enabled              = each.value.is_auto_scaling_enabled
  is_byol_cpu_core_count_limit_enabled = each.value.is_byol_cpu_core_count_limit_enabled
  is_lock_override                     = each.value.is_lock_override
  is_public                            = each.value.is_public
  license_model                        = each.value.license_model
  load_balancer_subnet_id              = each.value.load_balancer_subnet_id
  nsg_ids                              = each.value.nsg_ids
  security_attributes                  = each.value.security_attributes
  source_deployment_id                 = each.value.source_deployment_id
  state                                = each.value.state
  subscription_id                      = each.value.subscription_id

  dynamic "backup_schedule" {
    for_each = each.value.backup_schedule != null ? [each.value.backup_schedule] : []
    content {
      bucket                     = backup_schedule.value.bucket
      compartment_id             = backup_schedule.value.compartment_id
      frequency_backup_scheduled = backup_schedule.value.frequency_backup_scheduled
      is_metadata_only           = backup_schedule.value.is_metadata_only
      namespace                  = backup_schedule.value.namespace
      time_backup_scheduled      = backup_schedule.value.time_backup_scheduled
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message = locks.value.message
      type    = locks.value.type
    }
  }

  dynamic "maintenance_configuration" {
    for_each = each.value.maintenance_configuration != null ? [each.value.maintenance_configuration] : []
    content {
      bundle_release_upgrade_period_in_days   = maintenance_configuration.value.bundle_release_upgrade_period_in_days
      interim_release_upgrade_period_in_days  = maintenance_configuration.value.interim_release_upgrade_period_in_days
      is_interim_release_auto_upgrade_enabled = maintenance_configuration.value.is_interim_release_auto_upgrade_enabled
      major_release_upgrade_period_in_days    = maintenance_configuration.value.major_release_upgrade_period_in_days
      security_patch_upgrade_period_in_days   = maintenance_configuration.value.security_patch_upgrade_period_in_days
    }
  }

  dynamic "maintenance_window" {
    for_each = each.value.maintenance_window != null ? [each.value.maintenance_window] : []
    content {
      day        = maintenance_window.value.day
      start_hour = maintenance_window.value.start_hour
    }
  }

  dynamic "ogg_data" {
    for_each = each.value.ogg_data != null ? [each.value.ogg_data] : []
    content {
      admin_password   = ogg_data.value.admin_password
      admin_username   = ogg_data.value.admin_username
      certificate      = ogg_data.value.certificate
      credential_store = ogg_data.value.credential_store
      deployment_name  = ogg_data.value.deployment_name
      dynamic "group_to_roles_mapping" {
        for_each = ogg_data.value.group_to_roles_mapping != null ? [ogg_data.value.group_to_roles_mapping] : []
        content {
          administrator_group_id = group_to_roles_mapping.value.administrator_group_id
          operator_group_id      = group_to_roles_mapping.value.operator_group_id
          security_group_id      = group_to_roles_mapping.value.security_group_id
          user_group_id          = group_to_roles_mapping.value.user_group_id
        }
      }
      identity_domain_id = ogg_data.value.identity_domain_id
      key                = ogg_data.value.key
      key_secret_id      = ogg_data.value.key_secret_id
      ogg_version        = ogg_data.value.ogg_version
      password_secret_id = ogg_data.value.password_secret_id
    }
  }

  dynamic "placements" {
    for_each = each.value.placements != null ? each.value.placements : []
    content {
      availability_domain = placements.value.availability_domain
      fault_domain        = placements.value.fault_domain
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

