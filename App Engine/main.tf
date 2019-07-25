provider "google" {
 credentials = "${var.credentials}"
  project     = "${var.project_id}"
  
} 


resource "google_app_engine_application" "app" {
  project     = "${var.project_id}"
  location_id = "us-central"
}