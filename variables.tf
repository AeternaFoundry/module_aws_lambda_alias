variable "lambda_aliases" {
  description = <<EOT
Map of lambda_aliases, attributes below
Required:
    - function_name
    - function_version
    - name
Optional:
    - description
    - region
    - routing_config (block):
        - additional_version_weights (optional)
EOT

  type = map(object({
    function_name    = string
    function_version = string
    name             = string
    description      = optional(string)
    region           = optional(string)
    routing_config = optional(object({
      additional_version_weights = optional(map(number))
    }))
  }))
}

