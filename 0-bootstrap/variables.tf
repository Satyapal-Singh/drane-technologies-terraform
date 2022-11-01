/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "activate_apis" {
  description = "List of APIs to enable in seed project."
  type        = list(string)
  default = [
    "serviceusage.googleapis.com",
    "servicenetworking.googleapis.com",
    "compute.googleapis.com",
    "logging.googleapis.com",
    "bigquery.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudbilling.googleapis.com",
    "iam.googleapis.com",
    "admin.googleapis.com",
    "appengine.googleapis.com",
    "storage-api.googleapis.com",
    "monitoring.googleapis.com"
  ]
}

variable "project_prefix" {
  description = "Prefix to be attached to the seed project name"
  type        = string
  default     = "prj"
}

variable "bootstrap_project_id" {
  description = "Name of the seed project to be created within the Org"
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "default_region" {
  description = "Default region for the GCP resources to be created, wherever applicable"
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "storage_bucket_labels" {
  description = "Labels to apply to storage buckets."
  type        = map(string)
  default     = {}
}

variable "force_destroy" {
  description = "If supplied, the state bucket will be deleted even if it has objects."
  type        = bool
  default     = false
}

variable "org_policy_admin_role" {
  description = "Additional Org Policy- Admin Role for gcp-admins-group. Can be used for testing purpose."
  type        = bool
  default     = false
}

variable "bucket_prefix" {
  description = "Prefix to be attached to the tfstate bucket created."
  type        = string
  default     = "bkt"
}

variable "billing_account" {
  description = "Billing Account ID associated with the Org"
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "group_org_admins" {
  description = "Google group for GCP Organization Administrators."
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "group_billing_admins" {
  description = "Google group for GCP Billing Administrators."
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "org_project_creators" {
  description = "Additional list of members to have Project Creator role across the org. Prefix required: group: OR user: OR serviceAccount: "
  type        = list(string)
  default     = []
}

variable "org_id" {
  description = "GCP Org ID"
  type        = string
  # DEFAULT VALUE NOT SPECIFIED; ASSIGN IN terraform.tfvars
}

variable "parent_folder" {
  description = "Optional - for an organization with existing projects or for development/validation. It will place all the example foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. The folder must already exist."
  type        = string
  default     = ""
}

variable "folder_prefix" {
  description = "Prefix to be attached to folder names created at any steps."
  type        = string
  default     = "fldr"
}