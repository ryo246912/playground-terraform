# Terraform Import Blocks for GitHub Resources
# This file defines import blocks for existing GitHub resources

# Import existing GitHub repositories (using module references)
import {
  to = module.gh_reassign_reviewer.github_repository.repository
  id = "gh-reassign-reviewer"
}

import {
  to = module.config.github_repository.repository
  id = "config"
}

import {
  to = module.zenn-content.github_repository.repository
  id = "zenn-content"
}
# Import existing GitHub repository rulesets (using module references)
import {
  to = module.gh_reassign_reviewer_ruleset.github_repository_ruleset.repository_ruleset
  id = "gh-reassign-reviewer:5927378"
}
