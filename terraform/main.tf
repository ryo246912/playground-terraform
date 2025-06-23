resource "github_repository" "gh_reassign_reviewer" {
  name        = "gh-reassign-reviewer"
  description = "GitHub CLI extension that allows you to easily re-request reviews"
  visibility  = "public"

  # Merge settings
  allow_squash_merge     = true
  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_update_branch    = true
  delete_branch_on_merge = true

  # Features
  has_issues   = true
  topics       = ["cli", "gh-extension", "github", "go", "golang"]

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
