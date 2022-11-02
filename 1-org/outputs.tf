/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

output "shared_folders_ids" {
  description = "Shared folder ids."
  value       = module.shared_folders.ids
}

output "bu_folders" {
  description = "BU folder ids."
  value       = module.bu_folders.ids
}

output "team_folders" {
  description = "All team folders"
  value = module.team_folders
}

output "env_folders" {
  description = "All env folders"
  value = module.env_folders
}