/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/

variable "billing_account" {
  description = "The ID of the billing account to associate GCP projects with."
  type        = string
}

variable "org_id" {
  description = "GCP Organization ID."
  type        = string
}

# project variables

variable "projects" {
  description = "List of projects to be created"
  type        = any
}

variable "prj_myorg_activate_apis"{
  description = "List of all APIs that are to be activated for a project"
  type = list(string)
}

variable "terraform_service_account" {
  description = "Terraform service account to impersonate"
  type        = string
}