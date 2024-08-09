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
    ref     = optional(string)
    store   = optional(string)
    value   = optional(string)
    version = optional(string)
  })
}

variable "github_org_id" {
  description = "GitHub org id"
  type        = string
}

variable "github_app_client_id_ref" {
  description = "GitHub App Client ID (Secret Store reference)"
  type = object({
    ref     = optional(string)
    store   = optional(string)
    value   = optional(string)
    version = optional(string)
  })
}

variable "github_app_client_secret_ref" {
  description = "GitHub App Client Secret (Secret Store reference)"
  type = object({
    ref     = optional(string)
    store   = optional(string)
    value   = optional(string)
    version = optional(string)
  })
}

variable "github_app_id" {
  description = "GitHub App ID"
  type        = string
}

variable "github_webhook_secret_ref" {
  description = "GitHub Webhook Secret (Secret Store reference)"
  type = object({
    ref     = optional(string)
    store   = optional(string)
    value   = optional(string)
    version = optional(string)
  })
}

variable "github_app_private_key_ref" {
  description = "GitHub App Private Key (Secret Store reference)"
  type = object({
    ref     = optional(string)
    store   = optional(string)
    value   = optional(string)
    version = optional(string)
  })
}

variable "backstage_template_owner" {
  description = "Backstage template owner"
  type        = string
  default     = "177908998"
}

variable "backstage_template_repository" {
  description = "Backstage template repository"
  type        = string
  default     = "backstage"
}

# Required as Azure doesn't support wildcards in scopes https://github.com/Azure/azure-workload-identity/issues/373
# More details in https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect#customizing-the-token-claims
variable "backstage_repo_custom_claim_keys" {
  description = "Custom claim keys for the OIDC subject claim customization template"
  type        = list(string)
  default     = null
}
