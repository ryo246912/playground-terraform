# Repository settings
variable "repository_name" {
  description = "GitHubリポジトリの名前"
  type        = string
}

variable "repository_description" {
  description = "GitHubリポジトリの説明"
  type        = string
}

variable "repository_visibility" {
  description = "リポジトリの可視性"
  type        = string
  default     = "private"
}

variable "topics" {
  description = "リポジトリのトピック"
  type        = list(string)
  default     = []
}

# Merge settings
variable "allow_squash_merge" {
  description = "スカッシュマージを許可するかどうか"
  type        = bool
  default     = true
}

variable "allow_merge_commit" {
  description = "マージコミットを許可するかどうか"
  type        = bool
  default     = false
}

# Ruleset settings
variable "enable_ruleset" {
  description = "ルールセットを有効にするかどうか"
  type        = bool
  default     = true
}

variable "ruleset_enforcement" {
  description = "ルールセットの実行モード"
  type        = string
  default     = "active"
}

variable "ruleset_name" {
  description = "ルールセットの名前"
  type        = string
  default     = "main"
}

variable "ruleset_ref_include" {
  description = "ルールセットに含めるブランチ/タグのパターン"
  type        = list(string)
  default     = ["~DEFAULT_BRANCH"]
}

# Branch protection rules
variable "ruleset_prevent_deletion" {
  description = "ブランチの削除を防ぐかどうか"
  type        = bool
  default     = true
}

variable "ruleset_allow_update" {
  description = "ブランチの更新を許可するかどうか"
  type        = bool
  default     = false
}
