# Terraform Import Blocks for GitHub Resources
# This file defines import blocks for existing GitHub resources

# Import existing GitHub repository
import {
  to = github_repository.gh_reassign_reviewer
  id = "gh-reassign-reviewer"
}

# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection
import {
  to = github_repository_ruleset.gh_reassign_reviewer
  id = "gh-reassign-reviewer:5927378"
}
