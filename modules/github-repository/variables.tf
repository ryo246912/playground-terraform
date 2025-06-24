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

