/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

output "prj-shared" {
  value = {
    project_id     = module.prj-shared[*].project_id
    project_name   = module.prj-shared[*].project_name
    project_number = module.prj-shared[*].project_number
  }
}

output "prj-net-shared" {
  value = {
    project_id     = module.prj-net-shared[*].project_id
    project_name   = module.prj-net-shared[*].project_name
    project_number = module.prj-net-shared[*].project_number
  }
}