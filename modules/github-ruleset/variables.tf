# Repository reference
variable "repository_name" {
  type        = string
}

# Ruleset settings
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
