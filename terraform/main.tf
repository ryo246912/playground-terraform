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
