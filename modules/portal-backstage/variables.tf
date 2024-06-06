variable "cloud_provider" {
  description = "Used cloud provider. Possible values: aws, azure, gcp"
  type        = string
}

variable "humanitec_org_id" {
  description = "Humanitec Organization ID"
  type        = string
}

variable "humanitec_app_id" {
  description = "Humanitec Application ID"
  type        = string
}

variable "humanitec_ci_service_user_token_ref" {
  description = "Humanitec CI Service User Token (Secret Store reference)"
  type = object({
    ref     = string
    store   = string
    value   = string
    version = string
  })
}

variable "github_org_id" {
  description = "GitHub org id"
  type        = string
}

variable "github_app_client_id_ref" {
  description = "GitHub App Client ID (Secret Store reference)"
  type = object({
    ref     = string
    store   = string
    value   = string
    version = string
  })
}

variable "github_app_client_secret_ref" {
  description = "GitHub App Client Secret (Secret Store reference)"
  type = object({
    ref     = string
    store   = string
    value   = string
    version = string
  })
}

variable "github_app_id" {
  description = "GitHub App ID"
  type        = string
}

variable "github_webhook_secret_ref" {
  description = "GitHub Webhook Secret (Secret Store reference)"
  type = object({
    ref     = string
    store   = string
    value   = string
    version = string
  })
}

variable "github_app_private_key_ref" {
  description = "GitHub App Private Key (Secret Store reference)"
  type = object({
    ref     = string
    store   = string
    value   = string
    version = string
  })
}
