# Copyright 2022 Google LLC
#
# This software is provided as-is, without warranty or representation for any use or purpose.
# Your use of it is subject to your agreement with Google.

/*************************************************
  Module to create project in fld-shared folder.
*************************************************/
module "prj-shared" {
  source = "../../modules/projects"
  #version           = "~> 10.1"
  count             = length(var.projects)
  random_project_id = true
  org_id            = var.org_id
  billing_account   = var.billing_account
  name              = var.projects[count.index].prj_myorg_name
  folder_id         = var.projects[count.index].prj_folder_id
  activate_apis     = var.projects[count.index].prj_myorg_activate_apis
  labels            = var.projects[count.index].prj_myorg_project_labels
}

module "prj-net-shared" {
  source = "../../modules/projects"
  #version           = "~> 10.1"
  count                          = length(var.host_net_project)
  random_project_id              = true
  org_id                         = var.org_id
  billing_account                = var.billing_account
  name                           = var.host_net_project[count.index].prj_myorg_name
  folder_id                      = var.host_net_project[count.index].prj_folder_id
  activate_apis                  = var.host_net_project[count.index].prj_myorg_activate_apis
  labels                         = var.host_net_project[count.index].prj_myorg_project_labels
  enable_shared_vpc_host_project = true
}