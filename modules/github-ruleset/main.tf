resource "github_repository_ruleset" "repository_ruleset" {
  enforcement = var.ruleset_enforcement
  name        = var.ruleset_name
  repository  = var.repository_name
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