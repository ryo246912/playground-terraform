# Repository modules
module "gh_reassign_reviewer" {
  source = "../modules/github-repository"

  repository_name        = "gh-reassign-reviewer"
  repository_description = "GitHub CLI extension that allows you to easily re-request reviews"
  repository_visibility  = "public"
  topics                 = ["go", "cli", "golang", "github", "gh-extension"]

  # 個別設定
  allow_merge_commit = false
}

module "config" {
  source = "../modules/github-repository"

  repository_name        = "config"
  repository_description = ""
  repository_visibility  = "public"
  topics                 = []

  # 個別設定
  allow_merge_commit = false
}

module "zenn-content" {
  source = "../modules/github-repository"

  repository_name        = "zenn-content"
  repository_description = ""
  repository_visibility  = "public"
  topics                 = []

  # 個別設定
  allow_merge_commit = false
}

# Ruleset modules
module "gh_reassign_reviewer_ruleset" {
  source = "../modules/github-ruleset"

  ruleset_enforcement = "disabled" # rule自体は無効化にする
  repository_name     = module.gh_reassign_reviewer.repository_name
}

module "config_ruleset" {
  source = "../modules/github-ruleset"

  ruleset_enforcement = "disabled" # rule自体は無効化にする
  repository_name     = module.config.repository_name
}

module "zenn-content_ruleset" {
  source = "../modules/github-ruleset"

  ruleset_enforcement = "disabled" # rule自体は無効化にする
  repository_name     = module.zenn-content.repository_name
}
