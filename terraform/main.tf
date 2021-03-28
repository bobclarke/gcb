
locals {
  service_account       ="projects/${var.project_id}/serviceAccounts/${var.project_number}@cloudbuild.gserviceaccount.com"
}

module "gke" {
    source              = "./modules/gke"
    service_account     = local.service_account
}