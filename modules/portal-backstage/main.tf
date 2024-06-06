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
  secret_ref  = var.github_app_client_id_ref
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_client_secret" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_CLIENT_SECRET"
  description = ""
  secret_ref  = var.github_app_client_secret_ref
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_private_key" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_PRIVATE_KEY"
  description = ""
  secret_ref  = var.github_app_private_key_ref
  is_secret   = true
}

resource "humanitec_value" "backstage_github_app_webhook_secret" {
  app_id      = var.humanitec_app_id
  key         = "GITHUB_APP_WEBHOOK_SECRET"
  description = ""
  secret_ref  = var.github_webhook_secret_ref
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
  secret_ref  = var.humanitec_ci_service_user_token_ref
  is_secret   = true
}

resource "humanitec_value" "backstage_cloud_provider" {
  app_id      = var.humanitec_app_id
  key         = "CLOUD_PROVIDER"
  description = ""
  value       = var.cloud_provider
  is_secret   = false
}
