terraform {
  backend "gcs" {
    bucket = "octobre-rose-state-bucket"
    prefix = "terraform/state"
  }
}
