provider "google" {
 credentials = "${var.credentials}"
  project     = "${var.project_id}"
  
} 

resource "google_monitoring_notification_channel" "basic" {
  display_name = "Test Notification Channel"
  type = "email"
  labels = {
    email_address = "abhishekkhurana50@gmail.com"
  }
}