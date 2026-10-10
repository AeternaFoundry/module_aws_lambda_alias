output "lambda_aliases_id" {
  description = "Map of id values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_aliases_arn" {
  description = "Map of arn values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lambda_aliases_description" {
  description = "Map of description values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lambda_aliases_function_name" {
  description = "Map of function_name values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_aliases_function_version" {
  description = "Map of function_version values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.function_version if v.function_version != null && length(v.function_version) > 0 }
}
output "lambda_aliases_invoke_arn" {
  description = "Map of invoke_arn values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.invoke_arn if v.invoke_arn != null && length(v.invoke_arn) > 0 }
}
output "lambda_aliases_name" {
  description = "Map of name values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lambda_aliases_region" {
  description = "Map of region values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_aliases_routing_config" {
  description = "Map of routing_config values across all lambda_aliases, keyed the same as var.lambda_aliases"
  value       = { for k, v in aws_lambda_alias.lambda_aliases : k => one(v.routing_config) if v.routing_config != null && length(v.routing_config) > 0 }
}

