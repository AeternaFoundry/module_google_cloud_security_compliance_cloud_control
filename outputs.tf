output "cloud_security_compliance_cloud_controls_id" {
  description = "Map of id values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no id are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_security_compliance_cloud_controls_categories" {
  description = "Map of categories values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no categories are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.categories if v.categories != null && length(v.categories) > 0 }
}
output "cloud_security_compliance_cloud_controls_cloud_control_id" {
  description = "Map of cloud_control_id values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no cloud_control_id are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.cloud_control_id if v.cloud_control_id != null && length(v.cloud_control_id) > 0 }
}
output "cloud_security_compliance_cloud_controls_create_time" {
  description = "Map of create_time values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no create_time are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "cloud_security_compliance_cloud_controls_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_security_compliance_cloud_controls_description" {
  description = "Map of description values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no description are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_security_compliance_cloud_controls_display_name" {
  description = "Map of display_name values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no display_name are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_security_compliance_cloud_controls_finding_category" {
  description = "Map of finding_category values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no finding_category are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.finding_category if v.finding_category != null && length(v.finding_category) > 0 }
}
output "cloud_security_compliance_cloud_controls_location" {
  description = "Map of location values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no location are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cloud_security_compliance_cloud_controls_major_revision_id" {
  description = "Map of major_revision_id values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no major_revision_id are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.major_revision_id if v.major_revision_id != null && length(v.major_revision_id) > 0 }
}
output "cloud_security_compliance_cloud_controls_name" {
  description = "Map of name values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no name are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_security_compliance_cloud_controls_organization" {
  description = "Map of organization values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no organization are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "cloud_security_compliance_cloud_controls_parameter_spec" {
  description = "Map of parameter_spec values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no parameter_spec are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.parameter_spec if v.parameter_spec != null && length(v.parameter_spec) > 0 }
}
output "cloud_security_compliance_cloud_controls_parent" {
  description = "Map of parent values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no parent are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "cloud_security_compliance_cloud_controls_related_frameworks" {
  description = "Map of related_frameworks values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no related_frameworks are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.related_frameworks if v.related_frameworks != null && length(v.related_frameworks) > 0 }
}
output "cloud_security_compliance_cloud_controls_remediation_steps" {
  description = "Map of remediation_steps values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no remediation_steps are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.remediation_steps if v.remediation_steps != null && length(v.remediation_steps) > 0 }
}
output "cloud_security_compliance_cloud_controls_rules" {
  description = "Map of rules values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no rules are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "cloud_security_compliance_cloud_controls_severity" {
  description = "Map of severity values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no severity are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "cloud_security_compliance_cloud_controls_supported_cloud_providers" {
  description = "Map of supported_cloud_providers values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no supported_cloud_providers are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.supported_cloud_providers if v.supported_cloud_providers != null && length(v.supported_cloud_providers) > 0 }
}
output "cloud_security_compliance_cloud_controls_supported_enforcement_modes" {
  description = "Map of supported_enforcement_modes values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no supported_enforcement_modes are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.supported_enforcement_modes if v.supported_enforcement_modes != null && length(v.supported_enforcement_modes) > 0 }
}
output "cloud_security_compliance_cloud_controls_supported_target_resource_types" {
  description = "Map of supported_target_resource_types values across all cloud_security_compliance_cloud_controls, keyed the same as var.cloud_security_compliance_cloud_controls except keys with no supported_target_resource_types are omitted"
  value       = { for k, v in google_cloud_security_compliance_cloud_control.cloud_security_compliance_cloud_controls : k => v.supported_target_resource_types if v.supported_target_resource_types != null && length(v.supported_target_resource_types) > 0 }
}

