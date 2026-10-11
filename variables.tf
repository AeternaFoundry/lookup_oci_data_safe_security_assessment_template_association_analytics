variable "data_safe_security_assessment_template_association_analytics_lookup" {
  description = <<EOT
Map of data_safe_security_assessment_template_association_analytics_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - target_database_group_id
    - target_id
    - template_assessment_id
    - template_baseline_assessment_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                  = string
    access_level                    = optional(string)
    compartment_id_in_subtree       = optional(bool)
    target_database_group_id        = optional(string)
    target_id                       = optional(string)
    template_assessment_id          = optional(string)
    template_baseline_assessment_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

