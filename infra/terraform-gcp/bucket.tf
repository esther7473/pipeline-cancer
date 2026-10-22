resource "google_storage_bucket" "raw" {
  name                        = "${var.project_id}-raw"
  location                    = var.region
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
}

resource "google_bigquery_dataset" "layers" {
  for_each   = toset(["raw", "staging", "marts"])
  dataset_id = each.key
  location   = var.region
}

resource "google_service_account" "pipeline" {
  account_id   = "pipeline"
  display_name = "Pipeline dépistage cancer - octobre rose"
}