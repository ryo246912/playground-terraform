output "ruleset_id" {
  description = "ID of the created ruleset"
  value       = github_repository_ruleset.repository_ruleset.id
}

output "ruleset_name" {
  description = "Name of the created ruleset"
  value       = github_repository_ruleset.repository_ruleset.name
}