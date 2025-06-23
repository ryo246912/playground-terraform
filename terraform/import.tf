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

# Import existing GitHub repository rulesets (using module references)
import {
  to = module.gh_reassign_reviewer.github_repository_ruleset.repository_ruleset[0]
  id = "gh-reassign-reviewer:5927378"
}
