/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

output "project_details" {
  value = {
    project_id     = module.prj-all[*].project_id
    project_name   = module.prj-all[*].project_name
    project_number = module.prj-all[*].project_number
  }
}