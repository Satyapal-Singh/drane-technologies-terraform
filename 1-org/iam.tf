/*
Copyright 2022 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose.
Your use of it is subject to your agreement with Google.
*/


/*************************************************
  Module to assign Billing Account IAM Roles.
*************************************************/

# Additional Reference: https://github.com/terraform-google-modules/terraform-google-iam/tree/master/modules/billing_accounts_iam
module "billing-admin-iam-bindings" {
  source = "../modules/iam/billing_accounts_iam"
  #version             = "~> 7.4.0"
  billing_account_ids = var.billing_account

  mode = "additive"

  bindings = {
    "roles/billing.user" = [
      "group:${var.admin_groups["grp_billing_admin"]}",
    ]
  }
}

/*************************************************
  Module to assign Organization IAM Roles.
*************************************************/

# Additional Reference: https://github.com/terraform-google-modules/terraform-google-iam/tree/master/modules/organizations_iam
module "org-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  #version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/resourcemanager.organizationAdmin" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/resourcemanager.folderAdmin" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/resourcemanager.projectCreator" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/iam.organizationRoleAdmin" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/serviceusage.serviceUsageAdmin" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/cloudsupport.techSupportEditor" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/essentialcontacts.admin" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/billing.user" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]

    "roles/iap.tunnelResourceAccessor" = [
      "group:${var.admin_groups["grp_org_admin"]}",
    ]
  }
}


module "network-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  # version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/compute.networkAdmin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/compute.xpnAdmin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/compute.loadBalancerAdmin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/dns.admin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/networkmanagement.admin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/recommender.firewallAdmin" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/cloudsupport.techSupportEditor" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/servicemanagement.quotaViewer" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/resourcemanager.organizationViewer" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/resourcemanager.folderViewer" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]

    "roles/logging.viewer" = [
      "group:${var.admin_groups["grp_network_admin"]}",
    ]
  }
}


module "security-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  #version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/orgpolicy.policyAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/compute.orgFirewallPolicyAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/iam.securityAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/resourcemanager.folderIamAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/cloudkms.admin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/logging.privateLogViewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/logging.configWriter" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/compute.securityAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/recommender.iamAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/iam.serviceAccountAdmin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/secretmanager.admin" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/cloudsupport.techSupportEditor" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/securitycenter.findingsViewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/securitycenter.assetsViewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/resourcemanager.organizationViewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/compute.networkViewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]

    "roles/compute.viewer" = [
      "group:${var.admin_groups["grp_security_admin"]}",
    ]
  }
}


module "compute-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  # version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/compute.instanceAdmin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/iam.serviceAccountUser" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/compute.networkUser" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/compute.storageAdmin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/storage.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/container.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/cloudsql.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/pubsub.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/cloudbuild.builds.editor" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/logging.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/monitoring.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/cloudsupport.techSupportEditor" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/cloudkms.cryptoKeyEncrypterDecrypter" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/secretmanager.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/recommender.computeAdmin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/source.admin" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/servicemanagement.quotaViewer" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/compute.networkViewer" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/resourcemanager.organizationViewer" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]

    "roles/resourcemanager.folderViewer" = [
      "group:${var.admin_groups["grp_compute_admin"]}",
    ]
  }
}

module "log-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  # version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/logging.admin" = [
      "group:${var.admin_groups["grp_log_admin"]}",
    ]

    "roles/resourcemanager.organizationViewer" = [
      "group:${var.admin_groups["grp_log_admin"]}",
    ]

    "roles/resourcemanager.folderViewer" = [
      "group:${var.admin_groups["grp_log_admin"]}",
    ]
  }
}

module "monitoring-admin-iam-bindings" {
  source = "../modules/iam/organizations_iam"
  #version       = "~> 7.4.0"
  organizations = var.org_id
  mode          = "additive"

  bindings = {
    "roles/monitoring.admin" = [
      "group:${var.admin_groups["grp_monitoring_admin"]}",
    ]

    "roles/resourcemanager.organizationViewer" = [
      "group:${var.admin_groups["grp_monitoring_admin"]}",
    ]

    "roles/resourcemanager.folderViewer" = [
      "group:${var.admin_groups["grp_monitoring_admin"]}",
    ]
  }
}
