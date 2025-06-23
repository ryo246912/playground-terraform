output "repository_name" {
  description = "作成されたリポジトリの名前"
  value       = github_repository.repository.name
}

output "repository_full_name" {
  description = "作成されたリポジトリのフルネーム"
  value       = github_repository.repository.full_name
}

output "repository_html_url" {
  description = "作成されたリポジトリのHTML URL"
  value       = github_repository.repository.html_url
}

output "repository_clone_url_https" {
  description = "作成されたリポジトリのHTTPSクローンURL"
  value       = github_repository.repository.http_clone_url
}

output "repository_clone_url_ssh" {
  description = "作成されたリポジトリのSSHクローンURL"
  value       = github_repository.repository.ssh_clone_url
}