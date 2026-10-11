variable "kibana_export_saved_objects_lookup" {
  description = <<EOT
Map of kibana_export_saved_objects_lookup, attributes below
Required:
    - objects
Optional:
    - exclude_export_details
    - include_references_deep
    - space_id
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    objects = list(object({
      id   = string
      type = string
    }))
    exclude_export_details  = optional(bool)
    include_references_deep = optional(bool)
    space_id                = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

