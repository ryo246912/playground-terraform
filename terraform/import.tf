# Terraform Import Blocks for GitHub Resources
# This file defines import blocks for existing GitHub resources

# Import existing GitHub repository (using module reference)
import {
  to = module.gh_reassign_reviewer.github_repository.repository
  id = "gh-reassign-reviewer"
}

# Import existing GitHub repository ruleset (using module reference)
import {
  to = module.gh_reassign_reviewer.github_repository_ruleset.repository_ruleset[0]
  id = "gh-reassign-reviewer:5927378"
}
