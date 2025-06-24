resource "github_repository" "repository" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.repository_visibility

  # Merge settings
  allow_squash_merge     = var.allow_squash_merge
  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = false
  allow_update_branch    = true
  delete_branch_on_merge = true

  # Features
  has_issues = true
  topics     = var.topics

  # Security
  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}

