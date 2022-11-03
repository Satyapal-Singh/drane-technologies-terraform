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

variable "terraform_service_account" {
  description = "Terraform service account to impersonate"
  type        = any
}

variable "host_net_project" {
  description = "List of network project to be created"
  type        = any
}