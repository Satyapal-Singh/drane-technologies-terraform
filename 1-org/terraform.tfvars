parent_org_id = "organizations/869699134600" # FILL IN MANUALLY
parent_folder = ""
shared_names = ["fldr-drane-shared"]
bu_names = ["fldr-drane-whq"]
team_names = ["fldr-apps-supp-maint", "fldr-global-network-services", "fldr-active-directory", "fldr-hq-operations", "fldr-whq-ifs"]
env_names = ["fldr-dev", "fldr-qa", "fldr-test", "fldr-stag", "fldr-prod"]
set_roles = "false"
billing_account = ["01A249-F32C36-5D52F9"] # FILL IN MANUALLY
org_id = ["869699134600"] # FILL IN MANUALLY
admin_groups = {
    "grp_billing_admin" = "gcp-billing-admins@dranetechnologies.joonix.net"
    "grp_org_admin" = "gcp-organization-admins@dranetechnologies.joonix.net"
    "grp_network_admin" = "gcp-network-admins@dranetechnologies.joonix.net"
    "grp_security_admin" = "gcp-security-admins@dranetechnologies.joonix.net"
    "grp_compute_admin" = "gcp-devops-admins@dranetechnologies.joonix.net"
    "grp_log_admin" = "gcp-logging-admins@dranetechnologies.joonix.net"
    "grp_monitoring_admin" = "gcp-monitoring-admins@dranetechnologies.joonix.net"
}
terraform_service_account = "org-terraform@prj-b-seed-6a42.iam.gserviceaccount.com" # FILL IN MANUALLY


# > setproduct(["development", "staging", "production"], ["app1", "app2"])
# [
#   [
#     "development",
#     "app1",
#   ],
#   [
#     "development",
#     "app2",
#   ],
#   [
#     "staging",
#     "app1",
#   ],
#   [
#     "staging",
#     "app2",
#   ],
#   [
#     "production",
#     "app1",
#   ],
#   [
#     "production",
#     "app2",
#   ],
# ]