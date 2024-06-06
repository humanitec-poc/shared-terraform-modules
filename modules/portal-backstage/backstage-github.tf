locals {
  backstage_repo = "backstage"
}

# Backstage repository itself

resource "github_repository" "backstage" {
  name        = local.backstage_repo
  description = "Backstage"

  visibility = "public"

  template {
    owner      = "humanitec-architecture"
    repository = "backstage"
  }
}
