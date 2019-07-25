provider "google" {
 credentials = "${var.credentials}"
 region      = "${var.region}"
 project     = "${var.project_id}"
} 
resource "google_project_services" "project" {
  project = "${var.project_id}"
  services   = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com"]
}