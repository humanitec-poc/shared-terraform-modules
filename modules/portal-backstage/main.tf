# Configure required values for backstage

resource "humanitec_value" "backstage_github_org_id" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_ORG_ID"
  description = ""
  value       = var.github_org_id
  is_secret   = false
}

resource "humanitec_value" "backstage_github_app_id" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_ID"
  description = ""
  value       = var.github_app_id
  is_secret   = false
}

resource "humanitec_value" "backstage_github_app_client_id" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_CLIENT_ID"
  description = ""
  value       = var.github_app_client_id
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_client_secret" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_CLIENT_SECRET"
  description = ""
  value       = var.github_app_client_secret
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_private_key" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_PRIVATE_KEY"
  description = ""
  value       = indent(2, var.github_app_private_key)
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_webhook_secret" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_WEBHOOK_SECRET"
  description = ""
  value       = var.github_webhook_secret
  is_secret   = true
}

resource "humanitec_value" "backstage_humanitec_org" {
  app_id      = var.humanitec_app_id
  key         = "HUMANITEC_ORG_ID"
  description = ""
  value       = var.humanitec_org_id
  is_secret   = false
}

resource "humanitec_value" "backstage_humanitec_token" {
  app_id      = var.humanitec_app_id
  key         = "HUMANITEC_TOKEN"
  description = ""
  value       = var.humanitec_ci_service_user_token
  is_secret   = true
}

resource "humanitec_value" "backstage_cloud_provider" {
  app_id      = var.humanitec_app_id
  key         = "CLOUD_PROVIDER"
  description = ""
  value       = var.cloud_provider
  is_secret   = false
}

resource "random_bytes" "backstage_service_to_service_auth_key" {
  length = 24
}

resource "humanitec_value" "app_config_backend_auth_keys" {
  app_id      = var.humanitec_app_id
  key         = "APP_CONFIG_backend_auth_keys"
  description = "Backstage service-to-service-auth keys"
  value = jsonencode([{
    secret = random_bytes.backstage_service_to_service_auth_key.base64
  }])
  is_secret = true
}
