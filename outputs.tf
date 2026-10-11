output "golden_gate_deployments_id" {
  description = "Map of id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_deployments_availability_domain" {
  description = "Map of availability_domain values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no availability_domain are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "golden_gate_deployments_backup_schedule" {
  description = "Map of backup_schedule values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no backup_schedule are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => one(v.backup_schedule) if v.backup_schedule != null && length(v.backup_schedule) > 0 }
}
output "golden_gate_deployments_byol_cpu_core_count_limit" {
  description = "Map of byol_cpu_core_count_limit values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no byol_cpu_core_count_limit are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.byol_cpu_core_count_limit if v.byol_cpu_core_count_limit != null }
}
output "golden_gate_deployments_category" {
  description = "Map of category values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no category are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.category if v.category != null && length(v.category) > 0 }
}
output "golden_gate_deployments_cluster_placement_group_id" {
  description = "Map of cluster_placement_group_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no cluster_placement_group_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.cluster_placement_group_id if v.cluster_placement_group_id != null && length(v.cluster_placement_group_id) > 0 }
}
output "golden_gate_deployments_compartment_id" {
  description = "Map of compartment_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "golden_gate_deployments_cpu_core_count" {
  description = "Map of cpu_core_count values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no cpu_core_count are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.cpu_core_count if v.cpu_core_count != null }
}
output "golden_gate_deployments_defined_tags" {
  description = "Map of defined_tags values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "golden_gate_deployments_deployment_backup_id" {
  description = "Map of deployment_backup_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no deployment_backup_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.deployment_backup_id if v.deployment_backup_id != null && length(v.deployment_backup_id) > 0 }
}
output "golden_gate_deployments_deployment_diagnostic_data" {
  description = "Map of deployment_diagnostic_data values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no deployment_diagnostic_data are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.deployment_diagnostic_data if v.deployment_diagnostic_data != null && length(v.deployment_diagnostic_data) > 0 }
}
output "golden_gate_deployments_deployment_role" {
  description = "Map of deployment_role values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no deployment_role are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.deployment_role if v.deployment_role != null && length(v.deployment_role) > 0 }
}
output "golden_gate_deployments_deployment_type" {
  description = "Map of deployment_type values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no deployment_type are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "golden_gate_deployments_deployment_url" {
  description = "Map of deployment_url values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no deployment_url are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.deployment_url if v.deployment_url != null && length(v.deployment_url) > 0 }
}
output "golden_gate_deployments_description" {
  description = "Map of description values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no description are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "golden_gate_deployments_disaster_recovery_status" {
  description = "Map of disaster_recovery_status values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no disaster_recovery_status are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.disaster_recovery_status if v.disaster_recovery_status != null && length(v.disaster_recovery_status) > 0 }
}
output "golden_gate_deployments_display_name" {
  description = "Map of display_name values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no display_name are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "golden_gate_deployments_environment_type" {
  description = "Map of environment_type values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no environment_type are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.environment_type if v.environment_type != null && length(v.environment_type) > 0 }
}
output "golden_gate_deployments_fault_domain" {
  description = "Map of fault_domain values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no fault_domain are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.fault_domain if v.fault_domain != null && length(v.fault_domain) > 0 }
}
output "golden_gate_deployments_fqdn" {
  description = "Map of fqdn values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no fqdn are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "golden_gate_deployments_freeform_tags" {
  description = "Map of freeform_tags values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "golden_gate_deployments_ingress_ips" {
  description = "Map of ingress_ips values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no ingress_ips are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.ingress_ips if v.ingress_ips != null && length(v.ingress_ips) > 0 }
}
output "golden_gate_deployments_is_auto_scaling_enabled" {
  description = "Map of is_auto_scaling_enabled values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_auto_scaling_enabled are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_auto_scaling_enabled if v.is_auto_scaling_enabled != null }
}
output "golden_gate_deployments_is_byol_cpu_core_count_limit_enabled" {
  description = "Map of is_byol_cpu_core_count_limit_enabled values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_byol_cpu_core_count_limit_enabled are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_byol_cpu_core_count_limit_enabled if v.is_byol_cpu_core_count_limit_enabled != null }
}
output "golden_gate_deployments_is_healthy" {
  description = "Map of is_healthy values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_healthy are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_healthy if v.is_healthy != null }
}
output "golden_gate_deployments_is_latest_version" {
  description = "Map of is_latest_version values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_latest_version are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_latest_version if v.is_latest_version != null }
}
output "golden_gate_deployments_is_lock_override" {
  description = "Map of is_lock_override values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_lock_override if v.is_lock_override != null }
}
output "golden_gate_deployments_is_public" {
  description = "Map of is_public values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_public are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_public if v.is_public != null }
}
output "golden_gate_deployments_is_storage_utilization_limit_exceeded" {
  description = "Map of is_storage_utilization_limit_exceeded values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no is_storage_utilization_limit_exceeded are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.is_storage_utilization_limit_exceeded if v.is_storage_utilization_limit_exceeded != null }
}
output "golden_gate_deployments_license_model" {
  description = "Map of license_model values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no license_model are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.license_model if v.license_model != null && length(v.license_model) > 0 }
}
output "golden_gate_deployments_lifecycle_details" {
  description = "Map of lifecycle_details values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "golden_gate_deployments_lifecycle_sub_state" {
  description = "Map of lifecycle_sub_state values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no lifecycle_sub_state are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.lifecycle_sub_state if v.lifecycle_sub_state != null && length(v.lifecycle_sub_state) > 0 }
}
output "golden_gate_deployments_load_balancer_id" {
  description = "Map of load_balancer_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no load_balancer_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "golden_gate_deployments_load_balancer_subnet_id" {
  description = "Map of load_balancer_subnet_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no load_balancer_subnet_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.load_balancer_subnet_id if v.load_balancer_subnet_id != null && length(v.load_balancer_subnet_id) > 0 }
}
output "golden_gate_deployments_locks" {
  description = "Map of locks values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no locks are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "golden_gate_deployments_maintenance_configuration" {
  description = "Map of maintenance_configuration values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no maintenance_configuration are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => one(v.maintenance_configuration) if v.maintenance_configuration != null && length(v.maintenance_configuration) > 0 }
}
output "golden_gate_deployments_maintenance_window" {
  description = "Map of maintenance_window values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no maintenance_window are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => one(v.maintenance_window) if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "golden_gate_deployments_next_maintenance_action_type" {
  description = "Map of next_maintenance_action_type values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no next_maintenance_action_type are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.next_maintenance_action_type if v.next_maintenance_action_type != null && length(v.next_maintenance_action_type) > 0 }
}
output "golden_gate_deployments_next_maintenance_description" {
  description = "Map of next_maintenance_description values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no next_maintenance_description are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.next_maintenance_description if v.next_maintenance_description != null && length(v.next_maintenance_description) > 0 }
}
output "golden_gate_deployments_nsg_ids" {
  description = "Map of nsg_ids values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "golden_gate_deployments_ogg_data" {
  description = "Map of ogg_data values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no ogg_data are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => one(v.ogg_data) if v.ogg_data != null && length(v.ogg_data) > 0 }
  sensitive   = true
}
output "golden_gate_deployments_placements" {
  description = "Map of placements values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no placements are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.placements if v.placements != null && length(v.placements) > 0 }
}
output "golden_gate_deployments_private_ip_address" {
  description = "Map of private_ip_address values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no private_ip_address are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.private_ip_address if v.private_ip_address != null && length(v.private_ip_address) > 0 }
}
output "golden_gate_deployments_public_ip_address" {
  description = "Map of public_ip_address values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no public_ip_address are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.public_ip_address if v.public_ip_address != null && length(v.public_ip_address) > 0 }
}
output "golden_gate_deployments_security_attributes" {
  description = "Map of security_attributes values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no security_attributes are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "golden_gate_deployments_source_deployment_id" {
  description = "Map of source_deployment_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no source_deployment_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.source_deployment_id if v.source_deployment_id != null && length(v.source_deployment_id) > 0 }
}
output "golden_gate_deployments_state" {
  description = "Map of state values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no state are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "golden_gate_deployments_storage_utilization_in_bytes" {
  description = "Map of storage_utilization_in_bytes values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no storage_utilization_in_bytes are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.storage_utilization_in_bytes if v.storage_utilization_in_bytes != null && length(v.storage_utilization_in_bytes) > 0 }
}
output "golden_gate_deployments_subnet_id" {
  description = "Map of subnet_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no subnet_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "golden_gate_deployments_subscription_id" {
  description = "Map of subscription_id values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no subscription_id are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "golden_gate_deployments_system_tags" {
  description = "Map of system_tags values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no system_tags are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "golden_gate_deployments_time_created" {
  description = "Map of time_created values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_created are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "golden_gate_deployments_time_last_backup_scheduled" {
  description = "Map of time_last_backup_scheduled values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_last_backup_scheduled are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_last_backup_scheduled if v.time_last_backup_scheduled != null && length(v.time_last_backup_scheduled) > 0 }
}
output "golden_gate_deployments_time_next_backup_scheduled" {
  description = "Map of time_next_backup_scheduled values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_next_backup_scheduled are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_next_backup_scheduled if v.time_next_backup_scheduled != null && length(v.time_next_backup_scheduled) > 0 }
}
output "golden_gate_deployments_time_of_next_maintenance" {
  description = "Map of time_of_next_maintenance values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_of_next_maintenance are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_of_next_maintenance if v.time_of_next_maintenance != null && length(v.time_of_next_maintenance) > 0 }
}
output "golden_gate_deployments_time_ogg_version_supported_until" {
  description = "Map of time_ogg_version_supported_until values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_ogg_version_supported_until are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_ogg_version_supported_until if v.time_ogg_version_supported_until != null && length(v.time_ogg_version_supported_until) > 0 }
}
output "golden_gate_deployments_time_role_changed" {
  description = "Map of time_role_changed values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_role_changed are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_role_changed if v.time_role_changed != null && length(v.time_role_changed) > 0 }
}
output "golden_gate_deployments_time_updated" {
  description = "Map of time_updated values across all golden_gate_deployments, keyed the same as var.golden_gate_deployments except keys with no time_updated are omitted"
  value       = { for k, v in oci_golden_gate_deployment.golden_gate_deployments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

