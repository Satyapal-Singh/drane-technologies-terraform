# Copyright 2022 Google LLC
#
# This software is provided as-is, without warranty or representation for any use or purpose.
# Your use of it is subject to your agreement with Google.

locals {
  team_env_product = setproduct(var.team_names, var.env_names)
}


/*************************************************
  Module to create TOP FOLDERS and ENV FOLDERS.
*************************************************/

module "shared_folders" {
  source = "../modules/folders"
  #version   = "~> 3.1.0"
  parent    = var.parent_folder != "" ? var.parent_folder : var.parent_org_id
  names     = var.shared_names
  set_roles = var.set_roles
}

# Create first level BU folders
module "bu_folders" {
  source = "../modules/folders"
  #version   = "~> 3.1.0"
  parent    = var.parent_folder != "" ? var.parent_folder : var.parent_org_id
  names     = var.bu_names
  set_roles = var.set_roles
}

# Create second level team folders under BU folder

module "team_folders" {
  source = "../modules/folders"
  parent = module.bu_folders.ids_list[0]
  names = var.team_names
  set_roles = var.set_roles
}

# Create third level env folders under team folders

module "env_folders" {
  source = "../modules/folders"
  count = length(module.team_folders.ids_list)
  parent = module.team_folders.ids_list[count.index]
  names = var.env_names
  set_roles = var.set_roles
}

