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

resource "github_repository_ruleset" "repository_ruleset" {
  count = var.enable_ruleset ? 1 : 0

  enforcement = var.ruleset_enforcement
  name        = var.ruleset_name
  repository  = github_repository.repository.name
  target      = "branch"

  conditions {
    ref_name {
      exclude = []
      include = var.ruleset_ref_include
    }
  }

  rules {
    # Restrict creations
    creation                      = false
    # Restrict deletions
    deletion                      = var.ruleset_prevent_deletion
    non_fast_forward              = true
    required_linear_history       = false
    required_signatures           = false
    # Restrict updates
    update                        = var.ruleset_allow_update
    update_allows_fetch_and_merge = false

    pull_request {
      dismiss_stale_reviews_on_push     = true
      require_code_owner_review         = false
      require_last_push_approval        = true
      required_approving_review_count   = 1
      required_review_thread_resolution = false
    }
  }
}
