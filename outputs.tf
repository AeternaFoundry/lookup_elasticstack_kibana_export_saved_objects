output "kibana_export_saved_objects_lookup_id" {
  description = "Map of id values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no id are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_export_saved_objects_lookup_exclude_export_details" {
  description = "Map of exclude_export_details values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no exclude_export_details are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.exclude_export_details if v.exclude_export_details != null }
}
output "kibana_export_saved_objects_lookup_exported_objects" {
  description = "Map of exported_objects values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no exported_objects are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.exported_objects if v.exported_objects != null && length(v.exported_objects) > 0 }
}
output "kibana_export_saved_objects_lookup_include_references_deep" {
  description = "Map of include_references_deep values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no include_references_deep are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.include_references_deep if v.include_references_deep != null }
}
output "kibana_export_saved_objects_lookup_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no kibana_connection are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_export_saved_objects_lookup_objects" {
  description = "Map of objects values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no objects are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.objects if v.objects != null && length(v.objects) > 0 }
}
output "kibana_export_saved_objects_lookup_space_id" {
  description = "Map of space_id values across all kibana_export_saved_objects_lookup, keyed the same as var.kibana_export_saved_objects_lookup except keys with no space_id are omitted"
  value       = { for k, v in data.elasticstack_kibana_export_saved_objects.kibana_export_saved_objects_lookup : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}

