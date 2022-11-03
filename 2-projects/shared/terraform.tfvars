
billing_account = "01A249-F32C36-5D52F9" #TODO
org_id          = "869699134600" # TODO
projects = [
  {
    prj_myorg_name = "prj-otis-shared-logging"
    prj_folder_id  = "64577182817" # TODO
    prj_myorg_project_labels = {
      environment       = "shared"
      application_name  = "logging"
      billing_code      = "billing_code"
      primary_contact   = "infra"
      secondary_contact = "devops"
      business_code     = "otis"
      env_code          = "shared"
      vpc_type          = "shared"
    }
    prj_myorg_activate_apis = [
      "serviceusage.googleapis.com",
      "servicenetworking.googleapis.com",
      "cloudkms.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "bigquery.googleapis.com",
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "cloudbuild.googleapis.com",
      "iam.googleapis.com",
      "admin.googleapis.com",
      "storage-api.googleapis.com",
      "monitoring.googleapis.com",
      "accesscontextmanager.googleapis.com",
      "billingbudgets.googleapis.com",
      "bigquerydatatransfer.googleapis.com"
    ]
  },
  {
    prj_myorg_name = "prj-otis-shared-secrets"
    prj_folder_id  = "64577182817" # TODO
    prj_myorg_project_labels = {
      environment       = "shared"
      application_name  = "secrets"
      billing_code      = "billing_code"
      primary_contact   = "infra"
      secondary_contact = "devops"
      business_code     = "otis"
      env_code          = "shared"
      vpc_type          = "shared"
    }
    prj_myorg_activate_apis = [
      "serviceusage.googleapis.com",
      "servicenetworking.googleapis.com",
      "cloudkms.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "bigquery.googleapis.com",
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "cloudbuild.googleapis.com",
      "iam.googleapis.com",
      "admin.googleapis.com",
      "storage-api.googleapis.com",
      "monitoring.googleapis.com",
      "accesscontextmanager.googleapis.com",
      "billingbudgets.googleapis.com",
      "bigquerydatatransfer.googleapis.com"
    ]
  },
  {
    prj_myorg_name = "prj-otis-shared-mon"
    prj_folder_id  = "64577182817" # TODO
    prj_myorg_project_labels = {
      environment       = "shared"
      application_name  = "monitoring"
      billing_code      = "billing_code"
      primary_contact   = "infra"
      secondary_contact = "devops"
      business_code     = "otis"
      env_code          = "shared"
      vpc_type          = "shared"
    }
    prj_myorg_activate_apis = [
      "serviceusage.googleapis.com",
      "servicenetworking.googleapis.com",
      "cloudkms.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "bigquery.googleapis.com",
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "cloudbuild.googleapis.com",
      "iam.googleapis.com",
      "admin.googleapis.com",
      "storage-api.googleapis.com",
      "monitoring.googleapis.com",
      "accesscontextmanager.googleapis.com",
      "billingbudgets.googleapis.com",
      "bigquerydatatransfer.googleapis.com"
    ]
  },
  {
    prj_myorg_name = "prj-otis-shared-billing"
    prj_folder_id  = "64577182817" # TODO
    prj_myorg_project_labels = {
      environment       = "shared"
      application_name  = "billing"
      billing_code      = "billing_code"
      primary_contact   = "infra"
      secondary_contact = "devops"
      business_code     = "otis"
      env_code          = "shared"
      vpc_type          = "shared"
    }
    prj_myorg_activate_apis = [
      "serviceusage.googleapis.com",
      "servicenetworking.googleapis.com",
      "cloudkms.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "bigquery.googleapis.com",
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "cloudbuild.googleapis.com",
      "iam.googleapis.com",
      "admin.googleapis.com",
      "storage-api.googleapis.com",
      "monitoring.googleapis.com",
      "accesscontextmanager.googleapis.com",
      "billingbudgets.googleapis.com",
      "bigquerydatatransfer.googleapis.com"
    ]
  }
]
terraform_service_account = "org-terraform@prj-b-seed-6a42.iam.gserviceaccount.com" # TODO
host_net_project = [
  {
    prj_myorg_name = "prj-otis-host-net"
    prj_folder_id  = "64577182817" # TODO
    prj_myorg_project_labels = {
      environment       = "shared"
      application_name  = "hybrid-connection"
      billing_code      = "billing_code"
      primary_contact   = "infra"
      secondary_contact = "devops"
      business_code     = "otis"
      env_code          = "shared"
      vpc_type          = "shared"
    }
    prj_myorg_activate_apis = [
      "serviceusage.googleapis.com",
      "servicenetworking.googleapis.com",
      "compute.googleapis.com",
      "logging.googleapis.com",
      "cloudresourcemanager.googleapis.com",
      "cloudbilling.googleapis.com",
      "iam.googleapis.com",
      "admin.googleapis.com",
      "storage-api.googleapis.com",
      "monitoring.googleapis.com",
      "dns.googleapis.com",
      "iap.googleapis.com",
      "vmmigration.googleapis.com",
      "servicemanagement.googleapis.com",
      "servicecontrol.googleapis.com"
    ]
  }
]