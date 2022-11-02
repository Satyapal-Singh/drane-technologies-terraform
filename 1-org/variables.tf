/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

variable "parent" {
  type        = string
  description = "The resource name of the parent Folder or Organization. Must be of the form `folders/folder_id` or `organizations/org_id`."
  default     = "organizations/23787589526"
}

variable "bu_names" {
  type        = list(string)
  description = "BU Folder names."
}

variable "shared_names" {
  type        = list(string)
  description = "Shared folder name."
}

variable "team_names" {
  type        = list(string)
  description = "Team folder names"
}

variable "env_names" {
  type        = list(string)
  description = "Env Folder names."
}

variable "set_roles" {
  type        = bool
  description = "Enable setting roles via the folder admin variables."
}

variable "billing_account" {
  description = "The ID of the billing account to associate GCP projects with."
  type        = list(string)
}

variable "org_id" {
  description = "GCP Organization ID."
  type        = list(string)
}

variable "admin_groups" {
  description = "GCP admin groups according to best practices."
  type = map
}

variable "parent_folder" {
  description = "Optional - for an organization with existing projects or for development/validation. It will place all the example foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. The folder must already exist. Must be the same value used in previous step."
  type        = string
  default     = ""
}

variable "parent_org_id" {
  description = "Parent org ID"
  type        = string
}

variable "terraform_service_account" {
  description = "Service account email of the account to impersonate to run Terraform."
  type        = string
}
