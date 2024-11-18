# Output a copy of configure_management_resource for use by the core module

output "configuration" {
    description = "configuration settings for \"management\" resource"
    value = local.configure_management_resources
}

output "subscription_id" {
  description = "Subscription ID for the \"connectivity\" resources."
  value       = var.subscription_id_management
}