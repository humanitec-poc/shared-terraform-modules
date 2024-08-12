locals {
  backstage_repo = "backstage"
}

# Backstage repository itself

resource "github_repository" "backstage" {
  name        = local.backstage_repo
  description = "Backstage"

  visibility = "public"


}

# Required as Azure doesn't support wildcards in scopes https://github.com/Azure/azure-workload-identity/issues/373
# More details in https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/about-security-hardening-with-openid-connect#customizing-the-token-claims
resource "github_actions_repository_oidc_subject_claim_customization_template" "backstage" {
  count = var.backstage_repo_custom_claim_keys != null ? 1 : 0

  repository         = github_repository.backstage.name
  use_default        = false
  include_claim_keys = var.backstage_repo_custom_claim_keys
}

# Wait for the initial post-repo create action run to start
resource "time_sleep" "wait_after_claims_change" {
  count = var.backstage_repo_custom_claim_keys != null ? 1 : 0

  create_duration = "30s"

  depends_on = [github_actions_repository_oidc_subject_claim_customization_template.backstage]
}

# Redeploy after the custom claim keys change
resource "github_repository_file" "re_deploy" {
  count = var.backstage_repo_custom_claim_keys != null ? 1 : 0

  repository          = github_repository.backstage.name
  branch              = "main"
  file                = ".github/redeploy"
  content             = "redeploy after claim keys change"
  commit_message      = "Redeploy after claim keys change"
  commit_author       = "github-actions[bot]"
  commit_email        = "41898282+github-actions[bot]@users.noreply.github.com"
  overwrite_on_create = true

  depends_on = [time_sleep.wait_after_claims_change]
}
