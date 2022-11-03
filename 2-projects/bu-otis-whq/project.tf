# Copyright 2022 Google LLC
#
# This software is provided as-is, without warranty or representation for any use or purpose.
# Your use of it is subject to your agreement with Google.

/*************************************************
  Module to create projects
*************************************************/
module "prj-all" {
  source = "../../modules/projects"
  #version           = "~> 10.1"
  count             = length(var.projects)
  random_project_id = true
  org_id            = var.org_id
  billing_account   = var.billing_account
  name              = var.projects[count.index].prj_myorg_name
  folder_id         = var.projects[count.index].prj_folder_id
  activate_apis     = var.prj_myorg_activate_apis
  labels            = var.projects[count.index].prj_myorg_project_labels
}