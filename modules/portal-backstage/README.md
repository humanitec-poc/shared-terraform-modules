# Portal: Backstage

This module deploys the [Humanitec Reference Architecture Backstage](https://github.com/humanitec-architecture/backstage) as Application into a specific Humanitec Organization.

## Terraform docs

<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.3.0 |
| aws | ~> 5.17 |
| github | ~> 5.38 |
| humanitec | ~> 1.0 |
| random | ~> 3.5 |
| time | ~> 0.11 |

### Providers

| Name | Version |
|------|---------|
| github | ~> 5.38 |
| humanitec | ~> 1.0 |
| time | ~> 0.11 |

### Resources

| Name | Type |
|------|------|
| [github_actions_repository_oidc_subject_claim_customization_template.backstage](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_repository_oidc_subject_claim_customization_template) | resource |
| [github_repository.backstage](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.re_deploy](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [humanitec_value.backstage_cloud_provider](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_app_client_id](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_app_client_secret](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_app_id](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_app_private_key](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_app_webhook_secret](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_github_org_id](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_humanitec_org](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [humanitec_value.backstage_humanitec_token](https://registry.terraform.io/providers/humanitec/humanitec/latest/docs/resources/value) | resource |
| [time_sleep.wait_after_claims_change](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloud\_provider | Used cloud provider. Possible values: aws, azure, gcp | `string` | n/a | yes |
| github\_app\_client\_id\_ref | GitHub App Client ID (Secret Store reference) | <pre>object({<br>    ref     = optional(string)<br>    store   = optional(string)<br>    value   = optional(string)<br>    version = optional(string)<br>  })</pre> | n/a | yes |
| github\_app\_client\_secret\_ref | GitHub App Client Secret (Secret Store reference) | <pre>object({<br>    ref     = optional(string)<br>    store   = optional(string)<br>    value   = optional(string)<br>    version = optional(string)<br>  })</pre> | n/a | yes |
| github\_app\_id | GitHub App ID | `string` | n/a | yes |
| github\_app\_private\_key\_ref | GitHub App Private Key (Secret Store reference) | <pre>object({<br>    ref     = optional(string)<br>    store   = optional(string)<br>    value   = optional(string)<br>    version = optional(string)<br>  })</pre> | n/a | yes |
| github\_org\_id | GitHub org id | `string` | n/a | yes |
| github\_webhook\_secret\_ref | GitHub Webhook Secret (Secret Store reference) | <pre>object({<br>    ref     = optional(string)<br>    store   = optional(string)<br>    value   = optional(string)<br>    version = optional(string)<br>  })</pre> | n/a | yes |
| humanitec\_app\_id | Humanitec Application ID | `string` | n/a | yes |
| humanitec\_ci\_service\_user\_token\_ref | Humanitec CI Service User Token (Secret Store reference) | <pre>object({<br>    ref     = optional(string)<br>    store   = optional(string)<br>    value   = optional(string)<br>    version = optional(string)<br>  })</pre> | n/a | yes |
| humanitec\_org\_id | Humanitec Organization ID | `string` | n/a | yes |
| backstage\_repo\_custom\_claim\_keys | Custom claim keys for the OIDC subject claim customization template | `list(string)` | `null` | no |
| backstage\_template\_owner | Backstage template owner | `string` | `"humanitec-architecture"` | no |
| backstage\_template\_repository | Backstage template repository | `string` | `"backstage"` | no |
<!-- END_TF_DOCS -->
