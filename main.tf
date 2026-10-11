data "elasticstack_kibana_export_saved_objects" "kibana_export_saved_objects_lookup" {
  for_each = var.kibana_export_saved_objects_lookup

  objects                 = each.value.objects
  exclude_export_details  = each.value.exclude_export_details
  include_references_deep = each.value.include_references_deep
  space_id                = each.value.space_id

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

