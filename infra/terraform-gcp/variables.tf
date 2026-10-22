variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "region" {
  description = "Région de toutes les ressources"
  type        = string
  default     = "us-central1"
}
variable "zone" {
  description = "zone de toutes les ressources"
  type        = string
  default     = "us-central1-c"
}

